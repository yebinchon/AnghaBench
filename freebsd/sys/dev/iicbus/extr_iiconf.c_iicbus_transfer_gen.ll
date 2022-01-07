; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_transfer_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_transfer_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32, i32 }

@IIC_ERESOURCE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@IIC_ENOTSUPP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@IIC_M_NOSTART = common dso_local global i32 0, align 4
@IIC_LAST_READ = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iicbus_transfer_gen(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iic_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @device_get_children(i32 %18, i32** %15, i32* %12)
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @IIC_ERESOURCE, align 4
  store i32 %22, i32* %4, align 4
  br label %172

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* @M_TEMP, align 4
  %29 = call i32 @free(i32* %27, i32 %28)
  %30 = load i32, i32* @IIC_ENOTSUPP, align 4
  store i32 %30, i32* %4, align 4
  br label %172

31:                                               ; preds = %23
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* @M_TEMP, align 4
  %37 = call i32 @free(i32* %35, i32 %36)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %158, %31
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i1 [ false, %38 ], [ %44, %42 ]
  br i1 %46, label %47, label %161

47:                                               ; preds = %45
  %48 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %48, i64 %50
  %52 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %54, i64 %56
  %58 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IIC_M_RD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load i32, i32* @LSB, align 4
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %72

67:                                               ; preds = %47
  %68 = load i32, i32* @LSB, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %14, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %73, i64 %75
  %77 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IIC_M_NOSTART, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @iicbus_repeated_start(i32 %86, i32 %87, i32 0)
  store i32 %88, i32* %9, align 4
  br label %93

89:                                               ; preds = %82
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @iicbus_start(i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %161

97:                                               ; preds = %93
  store i32 1, i32* %17, align 4
  br label %98

98:                                               ; preds = %97, %72
  %99 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %99, i64 %101
  %103 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IIC_M_RD, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %98
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %110, i64 %112
  %114 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %116, i64 %118
  %120 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IIC_LAST_READ, align 4
  %123 = call i32 @iicbus_read(i32 %109, i32 %115, i32 %121, i32* %10, i32 %122, i32 0)
  store i32 %123, i32* %9, align 4
  br label %139

124:                                              ; preds = %98
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %126, i64 %128
  %130 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %132, i64 %134
  %136 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @iicbus_write(i32 %125, i32 %131, i32 %137, i32* %11, i32 0)
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %124, %108
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %161

143:                                              ; preds = %139
  %144 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %144, i64 %146
  %148 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @IIC_M_NOSTOP, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %143
  store i32 0, i32* %13, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @iicbus_stop(i32 %154)
  br label %157

156:                                              ; preds = %143
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %156, %153
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %38

161:                                              ; preds = %142, %96, %45
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @iicbus_stop(i32 %168)
  br label %170

170:                                              ; preds = %167, %164, %161
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %170, %26, %21
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @iicbus_repeated_start(i32, i32, i32) #1

declare dso_local i32 @iicbus_start(i32, i32, i32) #1

declare dso_local i32 @iicbus_read(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @iicbus_write(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @iicbus_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

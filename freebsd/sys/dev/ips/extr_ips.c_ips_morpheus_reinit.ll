; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_morpheus_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_morpheus_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@MORPHEUS_REG_OISR = common dso_local global i32 0, align 4
@MORPHEUS_REG_OMR0 = common dso_local global i32 0, align 4
@IPS_POST1_OK = common dso_local global i32 0, align 4
@MORPHEUS_REG_OMR1 = common dso_local global i32 0, align 4
@MORPHEUS_REG_OIMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"resetting adapter, this may take up to 5 minutes\0A\00", align 1
@MORPHEUS_REG_IDR = common dso_local global i32 0, align 4
@MORPHEUS_BIT_POST1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"post1: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Adapter error during initialization.\0A\00", align 1
@MORPHEUS_BIT_POST2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"post2: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"adapter failed config check\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"adapter clear failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_morpheus_reinit(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = load i32, i32* @MORPHEUS_REG_OISR, align 4
  %10 = call i32 @ips_read_4(%struct.TYPE_6__* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load i32, i32* @MORPHEUS_REG_OMR0, align 4
  %16 = call i32 @ips_read_4(%struct.TYPE_6__* %14, i32 %15)
  %17 = load i32, i32* @IPS_POST1_OK, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load i32, i32* @MORPHEUS_REG_OMR1, align 4
  %22 = call i32 @ips_read_4(%struct.TYPE_6__* %20, i32 %21)
  %23 = icmp ne i32 %22, -559038737
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load i32, i32* @MORPHEUS_REG_OIMR, align 4
  %30 = call i32 @ips_write_4(%struct.TYPE_6__* %28, i32 %29, i32 0)
  store i32 0, i32* %3, align 4
  br label %164

31:                                               ; preds = %24, %19, %13, %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i32, i32* @MORPHEUS_REG_OIMR, align 4
  %34 = call i32 @ips_write_4(%struct.TYPE_6__* %32, i32 %33, i32 255)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = load i32, i32* @MORPHEUS_REG_OIMR, align 4
  %37 = call i32 @ips_read_4(%struct.TYPE_6__* %35, i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load i32, i32* @MORPHEUS_REG_IDR, align 4
  %44 = call i32 @ips_write_4(%struct.TYPE_6__* %42, i32 %43, i32 -2147483648)
  %45 = call i32 @DELAY(i32 5000000)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = load i32, i32* @MORPHEUS_REG_OIMR, align 4
  %48 = call i32 @ips_read_4(%struct.TYPE_6__* %46, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load i32, i32* @MORPHEUS_REG_OISR, align 4
  %51 = call i32 @ips_read_4(%struct.TYPE_6__* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %73, %31
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 45
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MORPHEUS_BIT_POST1, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ false, %52 ], [ %60, %55 ]
  br i1 %62, label %63, label %76

63:                                               ; preds = %61
  %64 = call i32 @DELAY(i32 1000000)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @DEVICE_PRINTF(i32 2, i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = load i32, i32* @MORPHEUS_REG_OISR, align 4
  %72 = call i32 @ips_read_4(%struct.TYPE_6__* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %52

76:                                               ; preds = %61
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @MORPHEUS_BIT_POST1, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = load i32, i32* @MORPHEUS_REG_OISR, align 4
  %84 = load i32, i32* @MORPHEUS_BIT_POST1, align 4
  %85 = call i32 @ips_write_4(%struct.TYPE_6__* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = load i32, i32* @MORPHEUS_REG_OMR0, align 4
  %92 = call i32 @ips_read_4(%struct.TYPE_6__* %90, i32 %91)
  %93 = load i32, i32* @IPS_POST1_OK, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89, %86
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %164

100:                                              ; preds = %89
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %122, %100
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 240
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MORPHEUS_BIT_POST2, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i1 [ false, %101 ], [ %109, %104 ]
  br i1 %111, label %112, label %125

112:                                              ; preds = %110
  %113 = call i32 @DELAY(i32 1000000)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @DEVICE_PRINTF(i32 2, i32 %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %120 = load i32, i32* @MORPHEUS_REG_OISR, align 4
  %121 = call i32 @ips_read_4(%struct.TYPE_6__* %119, i32 %120)
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %101

125:                                              ; preds = %110
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @MORPHEUS_BIT_POST2, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = load i32, i32* @MORPHEUS_REG_OISR, align 4
  %133 = load i32, i32* @MORPHEUS_BIT_POST2, align 4
  %134 = call i32 @ips_write_4(%struct.TYPE_6__* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load i32, i32* %7, align 4
  %137 = icmp eq i32 %136, 240
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %140 = load i32, i32* @MORPHEUS_REG_OMR1, align 4
  %141 = call i32 @ips_read_4(%struct.TYPE_6__* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138, %135
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @device_printf(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %164

148:                                              ; preds = %138
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = load i32, i32* @MORPHEUS_REG_OIMR, align 4
  %151 = call i32 @ips_write_4(%struct.TYPE_6__* %149, i32 %150, i32 0)
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = call i64 @ips_clear_adapter(%struct.TYPE_6__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @device_printf(i32 %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %164

163:                                              ; preds = %154, %148
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %158, %143, %95, %27
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @ips_read_4(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ips_write_4(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @DEVICE_PRINTF(i32, i32, i8*, i32) #1

declare dso_local i64 @ips_clear_adapter(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

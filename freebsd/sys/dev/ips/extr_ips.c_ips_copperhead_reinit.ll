; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_copperhead_reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_copperhead_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@COPPER_REG_SCPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"reinitializing adapter, this could take several minutes.\0A\00", align 1
@COPPER_REG_HISR = common dso_local global i32 0, align 4
@COPPER_GHI_BIT = common dso_local global i32 0, align 4
@COPPER_REG_ISPR = common dso_local global i32 0, align 4
@COPPER_REG_CBSP = common dso_local global i32 0, align 4
@COPPER_OP_BIT = common dso_local global i32 0, align 4
@COPPER_REG_CCCR = common dso_local global i32 0, align 4
@COPPER_ILE_BIT = common dso_local global i32 0, align 4
@COPPER_EBM_BIT = common dso_local global i32 0, align 4
@COPPER_EI_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"adapter initialization failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"adapter clear failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_copperhead_reinit(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = load i32, i32* @COPPER_REG_SCPR, align 4
  %12 = call i32 @ips_write_1(%struct.TYPE_8__* %10, i32 %11, i32 128)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load i32, i32* @COPPER_REG_SCPR, align 4
  %15 = call i32 @ips_write_1(%struct.TYPE_8__* %13, i32 %14, i32 0)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %49, %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 45
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32, i32* @COPPER_REG_HISR, align 4
  %32 = call i32 @ips_read_1(%struct.TYPE_8__* %30, i32 %31)
  %33 = load i32, i32* @COPPER_GHI_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = load i32, i32* @COPPER_REG_ISPR, align 4
  %39 = call i32 @ips_read_1(%struct.TYPE_8__* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* @COPPER_REG_HISR, align 4
  %44 = load i32, i32* @COPPER_GHI_BIT, align 4
  %45 = call i32 @ips_write_1(%struct.TYPE_8__* %42, i32 %43, i32 %44)
  br label %52

46:                                               ; preds = %29
  %47 = call i32 @DELAY(i32 1000000)
  br label %48

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %26

52:                                               ; preds = %36, %26
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 45
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %166

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %20

60:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %98, %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 8
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %90, %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 240
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = load i32, i32* @COPPER_REG_HISR, align 4
  %73 = call i32 @ips_read_1(%struct.TYPE_8__* %71, i32 %72)
  %74 = load i32, i32* @COPPER_GHI_BIT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = load i32, i32* @COPPER_REG_ISPR, align 4
  %80 = call i32 @ips_read_1(%struct.TYPE_8__* %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = load i32, i32* @COPPER_REG_HISR, align 4
  %85 = load i32, i32* @COPPER_GHI_BIT, align 4
  %86 = call i32 @ips_write_1(%struct.TYPE_8__* %83, i32 %84, i32 %85)
  br label %93

87:                                               ; preds = %70
  %88 = call i32 @DELAY(i32 1000000)
  br label %89

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %67

93:                                               ; preds = %77, %67
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 240
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %166

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %61

101:                                              ; preds = %61
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %116, %101
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 240
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = load i32, i32* @COPPER_REG_CBSP, align 4
  %108 = call i32 @ips_read_1(%struct.TYPE_8__* %106, i32 %107)
  %109 = load i32, i32* @COPPER_OP_BIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %119

113:                                              ; preds = %105
  %114 = call i32 @DELAY(i32 1000000)
  br label %115

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %102

119:                                              ; preds = %112, %102
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 240
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 1, i32* %3, align 4
  br label %166

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = load i32, i32* @COPPER_REG_CCCR, align 4
  %126 = load i32, i32* @COPPER_ILE_BIT, align 4
  %127 = or i32 4096, %126
  %128 = call i32 @ips_write_2(%struct.TYPE_8__* %124, i32 %125, i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = load i32, i32* @COPPER_REG_SCPR, align 4
  %131 = load i32, i32* @COPPER_EBM_BIT, align 4
  %132 = call i32 @ips_write_1(%struct.TYPE_8__* %129, i32 %130, i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = call i32 @ips_copperhead_queue_init(%struct.TYPE_8__* %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = load i32, i32* @COPPER_REG_HISR, align 4
  %137 = load i32, i32* @COPPER_GHI_BIT, align 4
  %138 = call i32 @ips_write_1(%struct.TYPE_8__* %135, i32 %136, i32 %137)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = load i32, i32* @COPPER_REG_SCPR, align 4
  %141 = call i32 @ips_read_1(%struct.TYPE_8__* %139, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = load i32, i32* @COPPER_REG_HISR, align 4
  %144 = load i32, i32* @COPPER_EI_BIT, align 4
  %145 = call i32 @ips_write_1(%struct.TYPE_8__* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %123
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @device_printf(i32 %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %166

153:                                              ; preds = %123
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = call i64 @ips_clear_adapter(%struct.TYPE_8__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %166

165:                                              ; preds = %156, %153
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %160, %148, %122, %96, %55
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @ips_write_1(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ips_read_1(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ips_write_2(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ips_copperhead_queue_init(%struct.TYPE_8__*) #1

declare dso_local i64 @ips_clear_adapter(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_smp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/util/extr_madeye.c_print_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32*, i32*, i32*, i64, i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"MAD version....0x%01x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Class..........0x%01x (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Class version..0x%01x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Method.........0x%01x (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Status.........0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Hop pointer....0x%01x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Hop counter....0x%01x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Trans ID.......0x%llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Attr ID........0x%02x (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Attr modifier..0x%04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Mkey...........0x%llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"DR SLID........0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"DR DLID........0x%02x\00", align 1
@data = common dso_local global i64 0, align 8
@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"\0ASMP Data.......\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%01x \00", align 1
@IB_SMP_MAX_PATH_HOPS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"\0AInitial path...\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"\0AReturn path....\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_smp*)* @print_smp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_smp(%struct.ib_smp* %0) #0 {
  %2 = alloca %struct.ib_smp*, align 8
  %3 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %2, align 8
  %4 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %5 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %4, i32 0, i32 15
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %9 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %12 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %11, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_class_name(i32 %13)
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %14)
  %16 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %17 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %16, i32 0, i32 14
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %21 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %24 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %27 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @get_method_name(i32 %25, i32 %28)
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %29)
  %31 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %32 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @be16_to_cpu(i64 %33)
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %37 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %1
  %41 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %42 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %41, i32 0, i32 11
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @be16_to_cpu(i64 %43)
  %45 = call i32 @print_status_details(i32 %44)
  br label %46

46:                                               ; preds = %40, %1
  %47 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %48 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %52 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %56 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @be64_to_cpu(i32 %57)
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %58)
  %60 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %61 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @be16_to_cpu(i64 %62)
  %64 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %65 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @get_smp_attr(i64 %66)
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %63, i32 %67)
  %69 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %70 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %72)
  %74 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %75 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @be64_to_cpu(i32 %76)
  %78 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %77)
  %79 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %80 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @be16_to_cpu(i64 %81)
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %82)
  %84 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %85 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @be16_to_cpu(i64 %86)
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* @data, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %161

91:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %111, %91
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load i32, i32* %3, align 4
  %98 = srem i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %96
  %103 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %104 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %92

114:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %134, %114
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @IB_SMP_MAX_PATH_HOPS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load i32, i32* %3, align 4
  %121 = srem i32 %120, 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %119
  %126 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %127 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %115

137:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %157, %137
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @IB_SMP_MAX_PATH_HOPS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = load i32, i32* %3, align 4
  %144 = srem i32 %143, 16
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %142
  %149 = load %struct.ib_smp*, %struct.ib_smp** %2, align 8
  %150 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  br label %138

160:                                              ; preds = %138
  br label %161

161:                                              ; preds = %160, %46
  %162 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @get_class_name(i32) #1

declare dso_local i32 @get_method_name(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @print_status_details(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @get_smp_attr(i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

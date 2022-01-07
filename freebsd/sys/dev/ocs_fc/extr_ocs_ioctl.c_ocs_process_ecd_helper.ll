; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ioctl.c_ocs_process_ecd_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_ioctl.c_ocs_process_ecd_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_20__ = type { i32, i64, i32, i32 }

@PCI_MAX_BAR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Error: bar %d out of range\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error: bar %d not defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid helper command=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ocs_process_ecd_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_process_ecd_helper(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %51 [
    i32 137, label %13
    i32 139, label %13
    i32 138, label %13
    i32 134, label %13
    i32 136, label %13
    i32 135, label %13
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_MAX_BAR, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %190

29:                                               ; preds = %13
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %190

50:                                               ; preds = %29
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %179 [
    i32 131, label %56
    i32 133, label %65
    i32 132, label %74
    i32 128, label %83
    i32 130, label %92
    i32 129, label %101
    i32 137, label %110
    i32 139, label %121
    i32 138, label %132
    i32 134, label %143
    i32 136, label %155
    i32 135, label %167
  ]

56:                                               ; preds = %52
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ocs_config_read8(%struct.TYPE_19__* %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %188

65:                                               ; preds = %52
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ocs_config_read16(%struct.TYPE_19__* %66, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %188

74:                                               ; preds = %52
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ocs_config_read32(%struct.TYPE_19__* %75, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %188

83:                                               ; preds = %52
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ocs_config_write8(%struct.TYPE_19__* %84, i32 %87, i32 %90)
  br label %188

92:                                               ; preds = %52
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ocs_config_write16(%struct.TYPE_19__* %93, i32 %96, i32 %99)
  br label %188

101:                                              ; preds = %52
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ocs_config_write32(%struct.TYPE_19__* %102, i32 %105, i32 %108)
  br label %188

110:                                              ; preds = %52
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ocs_reg_read8(%struct.TYPE_19__* %111, i64 %114, i32 %117)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %188

121:                                              ; preds = %52
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ocs_reg_read16(%struct.TYPE_19__* %122, i64 %125, i32 %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %188

132:                                              ; preds = %52
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ocs_reg_read32(%struct.TYPE_19__* %133, i64 %136, i32 %139)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %188

143:                                              ; preds = %52
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ocs_reg_write8(%struct.TYPE_19__* %144, i64 %147, i32 %150, i32 %153)
  br label %188

155:                                              ; preds = %52
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ocs_reg_write16(%struct.TYPE_19__* %156, i64 %159, i32 %162, i32 %165)
  br label %188

167:                                              ; preds = %52
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ocs_reg_write32(%struct.TYPE_19__* %168, i64 %171, i32 %174, i32 %177)
  br label %188

179:                                              ; preds = %52
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = call i32 @device_printf(i32 %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %186)
  br label %188

188:                                              ; preds = %179, %167, %155, %143, %132, %121, %110, %101, %92, %83, %74, %65, %56
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %40, %19
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @ocs_config_read8(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ocs_config_read16(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ocs_config_read32(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ocs_config_write8(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ocs_config_write16(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ocs_config_write32(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ocs_reg_read8(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @ocs_reg_read16(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @ocs_reg_read32(%struct.TYPE_19__*, i64, i32) #1

declare dso_local i32 @ocs_reg_write8(%struct.TYPE_19__*, i64, i32, i32) #1

declare dso_local i32 @ocs_reg_write16(%struct.TYPE_19__*, i64, i32, i32) #1

declare dso_local i32 @ocs_reg_write32(%struct.TYPE_19__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

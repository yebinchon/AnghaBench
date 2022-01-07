; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_get_params__pre_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_get_params__pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@PORTVEC = common dso_local global i32 0, align 4
@CCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to query parameters (pre_init): %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to get devlog parameters: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @get_params__pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_params__pre_init(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*], align 16
  %6 = alloca [2 x i8*], align 16
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = call i32 @t4_get_version_info(%struct.adapter* %7)
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %15)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %30)
  %32 = call i32 @snprintf(i32 %11, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21, i32 %26, i32 %31)
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %39)
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %44)
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %54)
  %56 = call i32 @snprintf(i32 %35, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %50, i32 %55)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %73)
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %78)
  %80 = call i32 @snprintf(i32 %59, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %69, i32 %74, i32 %79)
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.adapter*, %struct.adapter** %3, align 8
  %85 = getelementptr inbounds %struct.adapter, %struct.adapter* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %87)
  %89 = load %struct.adapter*, %struct.adapter** %3, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %92)
  %94 = load %struct.adapter*, %struct.adapter** %3, align 8
  %95 = getelementptr inbounds %struct.adapter, %struct.adapter* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %97)
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %102)
  %104 = call i32 @snprintf(i32 %83, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %93, i32 %98, i32 %103)
  %105 = load i32, i32* @PORTVEC, align 4
  %106 = call i8* @FW_PARAM_DEV(i32 %105)
  %107 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %106, i8** %107, align 16
  %108 = load i32, i32* @CCLK, align 4
  %109 = call i8* @FW_PARAM_DEV(i32 %108)
  %110 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 1
  store i8* %109, i8** %110, align 8
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.adapter*, %struct.adapter** %3, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %119 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %120 = call i32 @t4_query_params(%struct.adapter* %111, i32 %114, i32 %117, i32 0, i32 2, i8** %118, i8** %119)
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %1
  %125 = load %struct.adapter*, %struct.adapter** %3, align 8
  %126 = getelementptr inbounds %struct.adapter, %struct.adapter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %165

131:                                              ; preds = %1
  %132 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %133 = load i8*, i8** %132, align 16
  %134 = load %struct.adapter*, %struct.adapter** %3, align 8
  %135 = getelementptr inbounds %struct.adapter, %struct.adapter* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  store i8* %133, i8** %136, align 8
  %137 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %138 = load i8*, i8** %137, align 16
  %139 = call i32 @bitcount32(i8* %138)
  %140 = load %struct.adapter*, %struct.adapter** %3, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 8
  %143 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i8* %144, i8** %148, align 8
  %149 = load %struct.adapter*, %struct.adapter** %3, align 8
  %150 = call i32 @t4_init_devlog_params(%struct.adapter* %149, i32 1)
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %131
  %155 = load %struct.adapter*, %struct.adapter** %3, align 8
  %156 = call i32 @fixup_devlog_params(%struct.adapter* %155)
  br label %163

157:                                              ; preds = %131
  %158 = load %struct.adapter*, %struct.adapter** %3, align 8
  %159 = getelementptr inbounds %struct.adapter, %struct.adapter* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @device_printf(i32 %160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %157, %154
  %164 = load i32, i32* %4, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %124
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @t4_get_version_info(%struct.adapter*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MAJOR(i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MINOR(i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MICRO(i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_BUILD(i32) #1

declare dso_local i8* @FW_PARAM_DEV(i32) #1

declare dso_local i32 @t4_query_params(%struct.adapter*, i32, i32, i32, i32, i8**, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bitcount32(i8*) #1

declare dso_local i32 @t4_init_devlog_params(%struct.adapter*, i32) #1

declare dso_local i32 @fixup_devlog_params(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

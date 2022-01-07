; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_create_kthreads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_create_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bdg_polling_state = type { i32, i64, i32, i32, i32, %struct.nm_bdg_kthread* }
%struct.nm_bdg_kthread = type { i32, i32, i32*, %struct.nm_bdg_polling_state* }
%struct.nm_kctx_cfg = type { i32, %struct.nm_bdg_kthread*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netmap_bwrap_polling = common dso_local global i32 0, align 4
@NETMAP_POLLING_MODE_SINGLE_CPU = common dso_local global i64 0, align 8
@netmap_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"kthread %d a:%u qf:%u ql:%u\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nm_bdg_polling_state*)* @nm_bdg_create_kthreads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_bdg_create_kthreads(%struct.nm_bdg_polling_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nm_bdg_polling_state*, align 8
  %4 = alloca %struct.nm_kctx_cfg, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nm_bdg_kthread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nm_bdg_kthread*, align 8
  store %struct.nm_bdg_polling_state* %0, %struct.nm_bdg_polling_state** %3, align 8
  %11 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %12 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 24, %14
  %16 = trunc i64 %15 to i32
  %17 = call %struct.nm_bdg_kthread* @nm_os_malloc(i32 %16)
  %18 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %19 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %18, i32 0, i32 5
  store %struct.nm_bdg_kthread* %17, %struct.nm_bdg_kthread** %19, align 8
  %20 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %21 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %20, i32 0, i32 5
  %22 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %21, align 8
  %23 = icmp eq %struct.nm_bdg_kthread* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %151

26:                                               ; preds = %1
  %27 = call i32 @bzero(%struct.nm_kctx_cfg* %4, i32 24)
  %28 = load i32, i32* @netmap_bwrap_polling, align 4
  %29 = getelementptr inbounds %struct.nm_kctx_cfg, %struct.nm_kctx_cfg* %4, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %122, %26
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %33 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %125

36:                                               ; preds = %30
  %37 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %38 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %37, i32 0, i32 5
  %39 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %39, i64 %41
  store %struct.nm_bdg_kthread* %42, %struct.nm_bdg_kthread** %7, align 8
  %43 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %44 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %49 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NETMAP_POLLING_MODE_SINGLE_CPU, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %36
  %54 = phi i1 [ false, %36 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %57 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %62 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %63 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %62, i32 0, i32 3
  store %struct.nm_bdg_polling_state* %61, %struct.nm_bdg_polling_state** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %68 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  br label %72

70:                                               ; preds = %53
  %71 = load i32, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i32 [ %69, %66 ], [ %71, %70 ]
  %74 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %75 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %80 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  br label %87

82:                                               ; preds = %72
  %83 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %84 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %81, %78 ], [ %86, %82 ]
  %89 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %90 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @netmap_verbose, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %97 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %100 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nm_prinf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %93, %87
  %104 = load i32, i32* %5, align 4
  %105 = getelementptr inbounds %struct.nm_kctx_cfg, %struct.nm_kctx_cfg* %4, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %107 = getelementptr inbounds %struct.nm_kctx_cfg, %struct.nm_kctx_cfg* %4, i32 0, i32 1
  store %struct.nm_bdg_kthread* %106, %struct.nm_bdg_kthread** %107, align 8
  %108 = call i32* @nm_os_kctx_create(%struct.nm_kctx_cfg* %4, i32* null)
  %109 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %110 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %112 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %126

116:                                              ; preds = %103
  %117 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %118 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @nm_os_kctx_worker_setaff(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %30

125:                                              ; preds = %30
  store i32 0, i32* %2, align 4
  br label %151

126:                                              ; preds = %115
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %142, %126
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %133 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %132, i32 0, i32 5
  %134 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %134, i64 %136
  store %struct.nm_bdg_kthread* %137, %struct.nm_bdg_kthread** %10, align 8
  %138 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %10, align 8
  %139 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @nm_os_kctx_destroy(i32* %140)
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %127

145:                                              ; preds = %127
  %146 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %147 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %146, i32 0, i32 5
  %148 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %147, align 8
  %149 = call i32 @nm_os_free(%struct.nm_bdg_kthread* %148)
  %150 = load i32, i32* @EFAULT, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %145, %125, %24
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.nm_bdg_kthread* @nm_os_malloc(i32) #1

declare dso_local i32 @bzero(%struct.nm_kctx_cfg*, i32) #1

declare dso_local i32 @nm_prinf(i8*, i32, i32, i32, i32) #1

declare dso_local i32* @nm_os_kctx_create(%struct.nm_kctx_cfg*, i32*) #1

declare dso_local i32 @nm_os_kctx_worker_setaff(i32*, i32) #1

declare dso_local i32 @nm_os_kctx_destroy(i32*) #1

declare dso_local i32 @nm_os_free(%struct.nm_bdg_kthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

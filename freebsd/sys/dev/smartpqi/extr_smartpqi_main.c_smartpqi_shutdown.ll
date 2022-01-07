; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_smartpqi_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_main.c_smartpqi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqisrc_softstate = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQISRC_SHUTDOWN = common dso_local global i32 0, align 4
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to flush adapter cache! rval = %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smartpqi_shutdown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pqisrc_softstate*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.pqisrc_softstate* null, %struct.pqisrc_softstate** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.pqisrc_softstate*
  store %struct.pqisrc_softstate* %7, %struct.pqisrc_softstate** %3, align 8
  %8 = load %struct.pqisrc_softstate*, %struct.pqisrc_softstate** %3, align 8
  %9 = load i32, i32* @PQISRC_SHUTDOWN, align 4
  %10 = call i32 @pqisrc_flush_cache(%struct.pqisrc_softstate* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @DBG_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_flush_cache(%struct.pqisrc_softstate*, i32) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

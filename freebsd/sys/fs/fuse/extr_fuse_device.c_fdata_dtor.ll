; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fdata_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_device.c_fdata_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_data = type { i32, i32, i32 }
%struct.fuse_ticket = type { i32, i32 }

@PZERO = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fdata_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdata_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fuse_data*, align 8
  %4 = alloca %struct.fuse_ticket*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fuse_data*
  store %struct.fuse_data* %6, %struct.fuse_data** %3, align 8
  %7 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %8 = icmp eq %struct.fuse_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %12 = call i32 @fdata_set_dead(%struct.fuse_data* %11)
  %13 = call i32 (...) @FUSE_LOCK()
  %14 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %15 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fuse_lck_mtx_lock(i32 %16)
  %18 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %19 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %18, i32 0, i32 2
  %20 = load i64, i64* @PZERO, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @selwakeuppri(i32* %19, i64 %21)
  br label %23

23:                                               ; preds = %27, %10
  %24 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %25 = call %struct.fuse_ticket* @fuse_aw_pop(%struct.fuse_data* %24)
  store %struct.fuse_ticket* %25, %struct.fuse_ticket** %4, align 8
  %26 = icmp ne %struct.fuse_ticket* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %29 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fuse_lck_mtx_lock(i32 %30)
  %32 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %33 = call i32 @fticket_set_answered(%struct.fuse_ticket* %32)
  %34 = load i32, i32* @ENOTCONN, align 4
  %35 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %36 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %38 = call i32 @wakeup(%struct.fuse_ticket* %37)
  %39 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %40 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fuse_lck_mtx_unlock(i32 %41)
  %43 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %44 = call i32 @FUSE_ASSERT_AW_DONE(%struct.fuse_ticket* %43)
  %45 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %46 = call i32 @fuse_ticket_drop(%struct.fuse_ticket* %45)
  br label %23

47:                                               ; preds = %23
  %48 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %49 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fuse_lck_mtx_unlock(i32 %50)
  %52 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %53 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @fuse_lck_mtx_lock(i32 %54)
  br label %56

56:                                               ; preds = %60, %47
  %57 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %58 = call %struct.fuse_ticket* @fuse_ms_pop(%struct.fuse_data* %57)
  store %struct.fuse_ticket* %58, %struct.fuse_ticket** %4, align 8
  %59 = icmp ne %struct.fuse_ticket* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  %62 = call i32 @fuse_ticket_drop(%struct.fuse_ticket* %61)
  br label %56

63:                                               ; preds = %56
  %64 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %65 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @fuse_lck_mtx_unlock(i32 %66)
  %68 = call i32 (...) @FUSE_UNLOCK()
  %69 = load %struct.fuse_data*, %struct.fuse_data** %3, align 8
  %70 = call i32 @fdata_trydestroy(%struct.fuse_data* %69)
  br label %71

71:                                               ; preds = %63, %9
  ret void
}

declare dso_local i32 @fdata_set_dead(%struct.fuse_data*) #1

declare dso_local i32 @FUSE_LOCK(...) #1

declare dso_local i32 @fuse_lck_mtx_lock(i32) #1

declare dso_local i32 @selwakeuppri(i32*, i64) #1

declare dso_local %struct.fuse_ticket* @fuse_aw_pop(%struct.fuse_data*) #1

declare dso_local i32 @fticket_set_answered(%struct.fuse_ticket*) #1

declare dso_local i32 @wakeup(%struct.fuse_ticket*) #1

declare dso_local i32 @fuse_lck_mtx_unlock(i32) #1

declare dso_local i32 @FUSE_ASSERT_AW_DONE(%struct.fuse_ticket*) #1

declare dso_local i32 @fuse_ticket_drop(%struct.fuse_ticket*) #1

declare dso_local %struct.fuse_ticket* @fuse_ms_pop(%struct.fuse_data*) #1

declare dso_local i32 @FUSE_UNLOCK(...) #1

declare dso_local i32 @fdata_trydestroy(%struct.fuse_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

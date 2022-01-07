; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { i64, i32, i64, %struct.fuse_data* }
%struct.fuse_data = type { i32 }

@fuse_ticket_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @fticket_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fticket_ctor(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_ticket*, align 8
  %10 = alloca %struct.fuse_data*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.fuse_ticket*
  store %struct.fuse_ticket* %12, %struct.fuse_ticket** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.fuse_data*
  store %struct.fuse_data* %14, %struct.fuse_data** %10, align 8
  %15 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %16 = call i32 @FUSE_ASSERT_MS_DONE(%struct.fuse_ticket* %15)
  %17 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %18 = call i32 @FUSE_ASSERT_AW_DONE(%struct.fuse_ticket* %17)
  %19 = load %struct.fuse_data*, %struct.fuse_data** %10, align 8
  %20 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %21 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %20, i32 0, i32 3
  store %struct.fuse_data* %19, %struct.fuse_data** %21, align 8
  %22 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %23 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %28 = call i32 @fticket_refresh(%struct.fuse_ticket* %27)
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.fuse_data*, %struct.fuse_data** %10, align 8
  %31 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %30, i32 0, i32 0
  %32 = call i8* @atomic_fetchadd_long(i32* %31, i32 1)
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %35 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %37 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.fuse_data*, %struct.fuse_data** %10, align 8
  %42 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %41, i32 0, i32 0
  %43 = call i8* @atomic_fetchadd_long(i32* %42, i32 1)
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %46 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %29
  %48 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %49 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %51 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %50, i32 0, i32 1
  %52 = call i32 @refcount_init(i32* %51, i32 1)
  %53 = load i32, i32* @fuse_ticket_count, align 4
  %54 = call i32 @counter_u64_add(i32 %53, i32 1)
  ret i32 0
}

declare dso_local i32 @FUSE_ASSERT_MS_DONE(%struct.fuse_ticket*) #1

declare dso_local i32 @FUSE_ASSERT_AW_DONE(%struct.fuse_ticket*) #1

declare dso_local i32 @fticket_refresh(%struct.fuse_ticket*) #1

declare dso_local i8* @atomic_fetchadd_long(i32*, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fticket_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { i64, i32, i64, i32*, i64, i32, i32, i32, i64, i32*, i32 }

@FT_M_FIOV = common dso_local global i32 0, align 4
@FT_A_FIOV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_ticket*)* @fticket_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fticket_refresh(%struct.fuse_ticket* %0) #0 {
  %2 = alloca %struct.fuse_ticket*, align 8
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %2, align 8
  %3 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %4 = call i32 @FUSE_ASSERT_MS_DONE(%struct.fuse_ticket* %3)
  %5 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %6 = call i32 @FUSE_ASSERT_AW_DONE(%struct.fuse_ticket* %5)
  %7 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %8 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %7, i32 0, i32 10
  %9 = call i32 @fiov_refresh(i32* %8)
  %10 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %11 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %10, i32 0, i32 9
  store i32* null, i32** %11, align 8
  %12 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %13 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @FT_M_FIOV, align 4
  %15 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %16 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %18 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %17, i32 0, i32 6
  %19 = call i32 @bzero(i32* %18, i32 4)
  %20 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %21 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %20, i32 0, i32 5
  %22 = call i32 @fiov_refresh(i32* %21)
  %23 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %24 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %26 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %28 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @FT_A_FIOV, align 4
  %30 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %31 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %33 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @FUSE_ASSERT_MS_DONE(%struct.fuse_ticket*) #1

declare dso_local i32 @FUSE_ASSERT_AW_DONE(%struct.fuse_ticket*) #1

declare dso_local i32 @fiov_refresh(i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

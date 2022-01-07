; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_build_readq_entry_from_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_build_readq_entry_from_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_queued_to_read = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_queued_to_read*, %struct.sctp_queued_to_read*)* @sctp_build_readq_entry_from_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_build_readq_entry_from_ctl(%struct.sctp_queued_to_read* %0, %struct.sctp_queued_to_read* %1) #0 {
  %3 = alloca %struct.sctp_queued_to_read*, align 8
  %4 = alloca %struct.sctp_queued_to_read*, align 8
  store %struct.sctp_queued_to_read* %0, %struct.sctp_queued_to_read** %3, align 8
  store %struct.sctp_queued_to_read* %1, %struct.sctp_queued_to_read** %4, align 8
  %5 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %6 = call i32 @memset(%struct.sctp_queued_to_read* %5, i32 0, i32 64)
  %7 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %7, i32 0, i32 13
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  %12 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %16 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %17, i32 0, i32 12
  %19 = call i32 @TAILQ_INIT(i32* %18)
  %20 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %24 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %26 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %34 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %36 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %39 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %44 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %46 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  %47 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %48 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %51 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %53 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %56 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %58 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %61 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %63 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %66 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %65, i32 0, i32 3
  store %struct.TYPE_2__* %64, %struct.TYPE_2__** %66, align 8
  %67 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %68 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @atomic_add_int(i32* %70, i32 1)
  %72 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %73 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %76 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %4, align 8
  %78 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %3, align 8
  %81 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  ret void
}

declare dso_local i32 @memset(%struct.sctp_queued_to_read*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

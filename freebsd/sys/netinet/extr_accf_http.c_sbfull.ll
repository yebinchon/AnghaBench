; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_accf_http.c_sbfull.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_accf_http.c_sbfull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [64 x i8] c"sbfull, cc(%ld) >= hiwat(%ld): %d, mbcnt(%ld) >= mbmax(%ld): %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockbuf*)* @sbfull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbfull(%struct.sockbuf* %0) #0 {
  %2 = alloca %struct.sockbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %2, align 8
  %3 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %4 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %7 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %10 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %13 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %18 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %21 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %24 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %27 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @DPRINT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %5, i64 %8, i32 %16, i64 %19, i64 %22, i32 %30)
  %32 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %33 = call i64 @sbused(%struct.sockbuf* %32)
  %34 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %35 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %1
  %39 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %40 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sockbuf*, %struct.sockbuf** %2, align 8
  %43 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br label %46

46:                                               ; preds = %38, %1
  %47 = phi i1 [ true, %1 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i32 @DPRINT(i8*, i64, i64, i32, i64, i64, i32) #1

declare dso_local i64 @sbused(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

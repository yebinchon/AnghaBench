; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_get_tmpifid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_ifattach.c_in6_get_tmpifid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.nd_ifinfo = type { i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_get_tmpifid(%struct.ifnet* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca %struct.nd_ifinfo*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %11)
  store %struct.nd_ifinfo* %12, %struct.nd_ifinfo** %10, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %14 = call i32 @bzero(i32* %13, i32 32)
  %15 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %16 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %19 = call i64 @bcmp(i32* %17, i32* %18, i32 32)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %28 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @bcopy(i32* %26, i32* %29, i32 8)
  %31 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %32 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %35 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %38 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @generate_tmp_ifid(i32 %33, i32* %36, i32* %39)
  br label %41

41:                                               ; preds = %25, %22
  %42 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %10, align 8
  %43 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @bcopy(i32* %44, i32* %45, i32 8)
  ret i32 0
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @bcmp(i32*, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @generate_tmp_ifid(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

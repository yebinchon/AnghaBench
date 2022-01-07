; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_allocmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_allocmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmultiaddr = type { i32, i32, %struct.ifmultiaddr*, %struct.ifmultiaddr*, i32*, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32, i32, %struct.sockaddr*, %struct.sockaddr*, i32*, %struct.ifnet* }

@M_IFMADDR = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifmultiaddr* (%struct.ifnet*, %struct.sockaddr*, %struct.sockaddr*, i32)* @if_allocmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifmultiaddr* @if_allocmulti(%struct.ifnet* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca %struct.ifmultiaddr*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifmultiaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @M_IFMADDR, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i32 40, i32 %12, i32 %15)
  %17 = bitcast i8* %16 to %struct.ifmultiaddr*
  store %struct.ifmultiaddr* %17, %struct.ifmultiaddr** %10, align 8
  %18 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %19 = icmp eq %struct.ifmultiaddr* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %5, align 8
  br label %93

21:                                               ; preds = %4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @M_IFMADDR, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i8* @malloc(i32 %24, i32 %25, i32 %26)
  %28 = bitcast i8* %27 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %11, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %30 = icmp eq %struct.sockaddr* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %33 = bitcast %struct.ifmultiaddr* %32 to %struct.sockaddr*
  %34 = load i32, i32* @M_IFMADDR, align 4
  %35 = call i32 @free(%struct.sockaddr* %33, i32 %34)
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %5, align 8
  br label %93

36:                                               ; preds = %21
  %37 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bcopy(%struct.sockaddr* %37, %struct.sockaddr* %38, i32 %41)
  %43 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.ifmultiaddr*
  %45 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %46 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %45, i32 0, i32 3
  store %struct.ifmultiaddr* %44, %struct.ifmultiaddr** %46, align 8
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %49 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %48, i32 0, i32 5
  store %struct.ifnet* %47, %struct.ifnet** %49, align 8
  %50 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %51 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %53 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %55 = icmp eq %struct.sockaddr* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %58 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %57, i32 0, i32 2
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %58, align 8
  %59 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  store %struct.ifmultiaddr* %59, %struct.ifmultiaddr** %5, align 8
  br label %93

60:                                               ; preds = %36
  %61 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %62 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @M_IFMADDR, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @malloc(i32 %63, i32 %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.sockaddr*
  store %struct.sockaddr* %67, %struct.sockaddr** %11, align 8
  %68 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %69 = icmp eq %struct.sockaddr* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %60
  %71 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %72 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %71, i32 0, i32 3
  %73 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %72, align 8
  %74 = bitcast %struct.ifmultiaddr* %73 to %struct.sockaddr*
  %75 = load i32, i32* @M_IFMADDR, align 4
  %76 = call i32 @free(%struct.sockaddr* %74, i32 %75)
  %77 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %78 = bitcast %struct.ifmultiaddr* %77 to %struct.sockaddr*
  %79 = load i32, i32* @M_IFMADDR, align 4
  %80 = call i32 @free(%struct.sockaddr* %78, i32 %79)
  store %struct.ifmultiaddr* null, %struct.ifmultiaddr** %5, align 8
  br label %93

81:                                               ; preds = %60
  %82 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %83 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %84 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %85 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bcopy(%struct.sockaddr* %82, %struct.sockaddr* %83, i32 %86)
  %88 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %89 = bitcast %struct.sockaddr* %88 to %struct.ifmultiaddr*
  %90 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  %91 = getelementptr inbounds %struct.ifmultiaddr, %struct.ifmultiaddr* %90, i32 0, i32 2
  store %struct.ifmultiaddr* %89, %struct.ifmultiaddr** %91, align 8
  %92 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %10, align 8
  store %struct.ifmultiaddr* %92, %struct.ifmultiaddr** %5, align 8
  br label %93

93:                                               ; preds = %81, %70, %56, %31, %20
  %94 = load %struct.ifmultiaddr*, %struct.ifmultiaddr** %5, align 8
  ret %struct.ifmultiaddr* %94
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

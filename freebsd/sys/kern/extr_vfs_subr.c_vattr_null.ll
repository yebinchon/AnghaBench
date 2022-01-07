; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vattr_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vattr_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vattr = type { i64, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@VNON = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vattr_null(%struct.vattr* %0) #0 {
  %2 = alloca %struct.vattr*, align 8
  store %struct.vattr* %0, %struct.vattr** %2, align 8
  %3 = load i32, i32* @VNON, align 4
  %4 = load %struct.vattr*, %struct.vattr** %2, align 8
  %5 = getelementptr inbounds %struct.vattr, %struct.vattr* %4, i32 0, i32 17
  store i32 %3, i32* %5, align 8
  %6 = load i8*, i8** @VNOVAL, align 8
  %7 = load %struct.vattr*, %struct.vattr** %2, align 8
  %8 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 16
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @VNOVAL, align 8
  %10 = load %struct.vattr*, %struct.vattr** %2, align 8
  %11 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 15
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @VNOVAL, align 8
  %13 = load %struct.vattr*, %struct.vattr** %2, align 8
  %14 = getelementptr inbounds %struct.vattr, %struct.vattr* %13, i32 0, i32 14
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @VNOVAL, align 8
  %16 = load %struct.vattr*, %struct.vattr** %2, align 8
  %17 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 13
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @VNOVAL, align 8
  %19 = load %struct.vattr*, %struct.vattr** %2, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 12
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @VNOVAL, align 8
  %22 = load %struct.vattr*, %struct.vattr** %2, align 8
  %23 = getelementptr inbounds %struct.vattr, %struct.vattr* %22, i32 0, i32 11
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @VNOVAL, align 8
  %25 = load %struct.vattr*, %struct.vattr** %2, align 8
  %26 = getelementptr inbounds %struct.vattr, %struct.vattr* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @VNOVAL, align 8
  %28 = load %struct.vattr*, %struct.vattr** %2, align 8
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @VNOVAL, align 8
  %31 = load %struct.vattr*, %struct.vattr** %2, align 8
  %32 = getelementptr inbounds %struct.vattr, %struct.vattr* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @VNOVAL, align 8
  %34 = load %struct.vattr*, %struct.vattr** %2, align 8
  %35 = getelementptr inbounds %struct.vattr, %struct.vattr* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @VNOVAL, align 8
  %37 = load %struct.vattr*, %struct.vattr** %2, align 8
  %38 = getelementptr inbounds %struct.vattr, %struct.vattr* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @VNOVAL, align 8
  %41 = load %struct.vattr*, %struct.vattr** %2, align 8
  %42 = getelementptr inbounds %struct.vattr, %struct.vattr* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @VNOVAL, align 8
  %45 = load %struct.vattr*, %struct.vattr** %2, align 8
  %46 = getelementptr inbounds %struct.vattr, %struct.vattr* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** @VNOVAL, align 8
  %49 = load %struct.vattr*, %struct.vattr** %2, align 8
  %50 = getelementptr inbounds %struct.vattr, %struct.vattr* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load i8*, i8** @VNOVAL, align 8
  %53 = load %struct.vattr*, %struct.vattr** %2, align 8
  %54 = getelementptr inbounds %struct.vattr, %struct.vattr* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @VNOVAL, align 8
  %57 = load %struct.vattr*, %struct.vattr** %2, align 8
  %58 = getelementptr inbounds %struct.vattr, %struct.vattr* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @VNOVAL, align 8
  %61 = load %struct.vattr*, %struct.vattr** %2, align 8
  %62 = getelementptr inbounds %struct.vattr, %struct.vattr* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @VNOVAL, align 8
  %65 = load %struct.vattr*, %struct.vattr** %2, align 8
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load i8*, i8** @VNOVAL, align 8
  %69 = load %struct.vattr*, %struct.vattr** %2, align 8
  %70 = getelementptr inbounds %struct.vattr, %struct.vattr* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @VNOVAL, align 8
  %72 = load %struct.vattr*, %struct.vattr** %2, align 8
  %73 = getelementptr inbounds %struct.vattr, %struct.vattr* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.vattr*, %struct.vattr** %2, align 8
  %75 = getelementptr inbounds %struct.vattr, %struct.vattr* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

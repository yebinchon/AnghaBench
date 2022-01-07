; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr.c_xdr_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr.c_xdr_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_discrim = type { i64, i32 (i32*, i8*)* }

@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_union(i32* %0, i64* %1, i8* %2, %struct.xdr_discrim* %3, i32 (i32*, i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xdr_discrim*, align 8
  %11 = alloca i32 (i32*, i8*)*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.xdr_discrim* %3, %struct.xdr_discrim** %10, align 8
  store i32 (i32*, i8*)* %4, i32 (i32*, i8*)** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = call i32 @xdr_enum(i32* %13, i64* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %6, align 4
  br label %56

19:                                               ; preds = %5
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %41, %19
  %23 = load %struct.xdr_discrim*, %struct.xdr_discrim** %10, align 8
  %24 = getelementptr inbounds %struct.xdr_discrim, %struct.xdr_discrim* %23, i32 0, i32 1
  %25 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %24, align 8
  %26 = icmp ne i32 (i32*, i8*)* %25, @NULL_xdrproc_t
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.xdr_discrim*, %struct.xdr_discrim** %10, align 8
  %29 = getelementptr inbounds %struct.xdr_discrim, %struct.xdr_discrim* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.xdr_discrim*, %struct.xdr_discrim** %10, align 8
  %35 = getelementptr inbounds %struct.xdr_discrim, %struct.xdr_discrim* %34, i32 0, i32 1
  %36 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %35, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 %36(i32* %37, i8* %38)
  store i32 %39, i32* %6, align 4
  br label %56

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.xdr_discrim*, %struct.xdr_discrim** %10, align 8
  %43 = getelementptr inbounds %struct.xdr_discrim, %struct.xdr_discrim* %42, i32 1
  store %struct.xdr_discrim* %43, %struct.xdr_discrim** %10, align 8
  br label %22

44:                                               ; preds = %22
  %45 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %11, align 8
  %46 = icmp eq i32 (i32*, i8*)* %45, @NULL_xdrproc_t
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @FALSE, align 4
  br label %54

49:                                               ; preds = %44
  %50 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %11, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 %50(i32* %51, i8* %52)
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi i32 [ %48, %47 ], [ %53, %49 ]
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %33, %17
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @xdr_enum(i32*, i64*) #1

declare dso_local i32 @NULL_xdrproc_t(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

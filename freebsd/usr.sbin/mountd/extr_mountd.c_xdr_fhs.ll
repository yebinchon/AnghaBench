; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_xdr_fhs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_xdr_fhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhreturn = type { i32, i32, i32*, i32 }

@NFSX_V2FH = common dso_local global i32 0, align 4
@NFSX_V3FH = common dso_local global i32 0, align 4
@AUTH_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @xdr_fhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_fhs(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fhreturn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.fhreturn*
  store %struct.fhreturn* %12, %struct.fhreturn** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @xdr_long(i32* %13, i32* %7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.fhreturn*, %struct.fhreturn** %6, align 8
  %19 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %87 [
    i32 1, label %21
    i32 3, label %28
  ]

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.fhreturn*, %struct.fhreturn** %6, align 8
  %24 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %23, i32 0, i32 3
  %25 = ptrtoint i32* %24 to i64
  %26 = load i32, i32* @NFSX_V2FH, align 4
  %27 = call i32 @xdr_opaque(i32* %22, i64 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %88

28:                                               ; preds = %17
  %29 = load i32, i32* @NFSX_V3FH, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @xdr_long(i32* %30, i32* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %88

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.fhreturn*, %struct.fhreturn** %6, align 8
  %37 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %36, i32 0, i32 3
  %38 = ptrtoint i32* %37 to i64
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @xdr_opaque(i32* %35, i64 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %88

43:                                               ; preds = %34
  %44 = load %struct.fhreturn*, %struct.fhreturn** %6, align 8
  %45 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.fhreturn*, %struct.fhreturn** %6, align 8
  %51 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %50, i32 0, i32 1
  %52 = call i32 @xdr_int(i32* %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %88

55:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.fhreturn*, %struct.fhreturn** %6, align 8
  %59 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.fhreturn*, %struct.fhreturn** %6, align 8
  %65 = getelementptr inbounds %struct.fhreturn, %struct.fhreturn* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @xdr_int(i32* %63, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %88

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %56

77:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %88

78:                                               ; preds = %43
  %79 = load i32, i32* @AUTH_SYS, align 4
  store i32 %79, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @xdr_long(i32* %80, i32* %8)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %88

84:                                               ; preds = %78
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @xdr_long(i32* %85, i32* %9)
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %83, %77, %72, %54, %42, %33, %21, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @xdr_long(i32*, i32*) #1

declare dso_local i32 @xdr_opaque(i32*, i64, i32) #1

declare dso_local i32 @xdr_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

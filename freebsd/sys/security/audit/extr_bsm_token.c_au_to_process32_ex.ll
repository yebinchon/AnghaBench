; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_process32_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_process32_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i64 }

@AU_IPv4 = common dso_local global i64 0, align 8
@AU_IPv6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"au_to_process32_ex: type %u\00", align 1
@AUT_PROCESS32_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_process32_ex(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, %struct.TYPE_3__* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %16, align 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AU_IPv4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AU_IPv6, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %8
  %31 = phi i1 [ true, %8 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = zext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %32, i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AU_IPv4, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load i32*, i32** %17, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = call i32 @GET_TOKEN_AREA(i32* %46, i32* %47, i32 44)
  br label %53

49:                                               ; preds = %30
  %50 = load i32*, i32** %17, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 @GET_TOKEN_AREA(i32* %50, i32* %51, i32 56)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32*, i32** %18, align 8
  %55 = load i32, i32* @AUT_PROCESS32_EX, align 4
  %56 = call i32 @ADD_U_CHAR(i32* %54, i32 %55)
  %57 = load i32*, i32** %18, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @ADD_U_INT32(i32* %57, i64 %58)
  %60 = load i32*, i32** %18, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @ADD_U_INT32(i32* %60, i64 %61)
  %63 = load i32*, i32** %18, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @ADD_U_INT32(i32* %63, i64 %64)
  %66 = load i32*, i32** %18, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @ADD_U_INT32(i32* %66, i64 %67)
  %69 = load i32*, i32** %18, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @ADD_U_INT32(i32* %69, i64 %70)
  %72 = load i32*, i32** %18, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @ADD_U_INT32(i32* %72, i64 %73)
  %75 = load i32*, i32** %18, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @ADD_U_INT32(i32* %75, i64 %76)
  %78 = load i32*, i32** %18, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ADD_U_INT32(i32* %78, i64 %81)
  %83 = load i32*, i32** %18, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ADD_U_INT32(i32* %83, i64 %86)
  %88 = load i32*, i32** %18, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = call i32 @ADD_MEM(i32* %88, i32* %92, i32 4)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AU_IPv6, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %53
  %100 = load i32*, i32** %18, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = call i32 @ADD_MEM(i32* %100, i32* %104, i32 4)
  %106 = load i32*, i32** %18, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = call i32 @ADD_MEM(i32* %106, i32* %110, i32 4)
  %112 = load i32*, i32** %18, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = call i32 @ADD_MEM(i32* %112, i32* %116, i32 4)
  br label %118

118:                                              ; preds = %99, %53
  %119 = load i32*, i32** %17, align 8
  ret i32* %119
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i64) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

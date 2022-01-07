; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_process64_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_process64_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@AU_IPv4 = common dso_local global i32 0, align 4
@AU_IPv6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"au_to_process64_ex: invalidate at_type (%d)\00", align 1
@AUT_PROCESS64_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_process64_ex(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_3__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %16, align 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AU_IPv4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32*, i32** %17, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = call i32 @GET_TOKEN_AREA(i32* %25, i32* %26, i32 44)
  br label %44

28:                                               ; preds = %8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AU_IPv6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32*, i32** %17, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = call i32 @GET_TOKEN_AREA(i32* %35, i32* %36, i32 56)
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32*, i32** %18, align 8
  %46 = load i32, i32* @AUT_PROCESS64_EX, align 4
  %47 = call i32 @ADD_U_CHAR(i32* %45, i32 %46)
  %48 = load i32*, i32** %18, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ADD_U_INT32(i32* %48, i32 %49)
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @ADD_U_INT32(i32* %51, i32 %52)
  %54 = load i32*, i32** %18, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ADD_U_INT32(i32* %54, i32 %55)
  %57 = load i32*, i32** %18, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ADD_U_INT32(i32* %57, i32 %58)
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ADD_U_INT32(i32* %60, i32 %61)
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @ADD_U_INT32(i32* %63, i32 %64)
  %66 = load i32*, i32** %18, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @ADD_U_INT32(i32* %66, i32 %67)
  %69 = load i32*, i32** %18, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ADD_U_INT64(i32* %69, i32 %72)
  %74 = load i32*, i32** %18, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ADD_U_INT32(i32* %74, i32 %77)
  %79 = load i32*, i32** %18, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i32 @ADD_MEM(i32* %79, i32* %83, i32 4)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AU_IPv6, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %44
  %91 = load i32*, i32** %18, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = call i32 @ADD_MEM(i32* %91, i32* %95, i32 4)
  %97 = load i32*, i32** %18, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = call i32 @ADD_MEM(i32* %97, i32* %101, i32 4)
  %103 = load i32*, i32** %18, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = call i32 @ADD_MEM(i32* %103, i32* %107, i32 4)
  br label %109

109:                                              ; preds = %90, %44
  %110 = load i32*, i32** %17, align 8
  ret i32* %110
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_U_INT64(i32*, i32) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_header32_ex_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_header32_ex_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.timeval = type { i32, i32 }

@AU_IPv4 = common dso_local global i32 0, align 4
@AU_IPv6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"au_to_header32_ex_tm: invalid address family\00", align 1
@AUT_HEADER32_EX = common dso_local global i32 0, align 4
@AUDIT_HEADER_VERSION_OPENBSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_header32_ex_tm(i32 %0, i32 %1, i32 %2, i64 %3, %struct.auditinfo_addr* %4) #0 {
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.auditinfo_addr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = bitcast %struct.timeval* %6 to i64*
  store i64 %3, i64* %15, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.auditinfo_addr* %4, %struct.auditinfo_addr** %10, align 8
  store i32* null, i32** %12, align 8
  %16 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %10, align 8
  %17 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %16, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %14, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AU_IPv4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AU_IPv6, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %23, %5
  %30 = phi i1 [ true, %5 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add i64 32, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @GET_TOKEN_AREA(i32* %33, i32* %34, i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* @AUT_HEADER32_EX, align 4
  %44 = call i32 @ADD_U_CHAR(i32* %42, i32 %43)
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ADD_U_INT32(i32* %45, i32 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* @AUDIT_HEADER_VERSION_OPENBSM, align 4
  %50 = call i32 @ADD_U_CHAR(i32* %48, i32 %49)
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ADD_U_INT16(i32* %51, i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ADD_U_INT16(i32* %54, i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ADD_U_INT32(i32* %57, i32 %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @AU_IPv6, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %29
  %68 = load i32*, i32** %12, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i32 @ADD_MEM(i32* %68, i32* %72, i32 16)
  br label %81

74:                                               ; preds = %29
  %75 = load i32*, i32** %12, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = call i32 @ADD_MEM(i32* %75, i32* %79, i32 4)
  br label %81

81:                                               ; preds = %74, %67
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 1000
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ADD_U_INT32(i32* %85, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @ADD_U_INT32(i32* %89, i32 %90)
  %92 = load i32*, i32** %11, align 8
  ret i32* %92
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

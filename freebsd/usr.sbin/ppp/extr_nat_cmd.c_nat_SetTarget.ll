; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_SetTarget.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_SetTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32* }
%struct.in_addr = type { i64 }

@INADDR_ANY = common dso_local global i8* null, align 8
@la = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"MYADDR\00", align 1
@INADDR_NONE = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: invalid address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat_SetTarget(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.in_addr, align 8
  %5 = alloca %struct.in_addr, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %6 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i8*, i8** @INADDR_ANY, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @la, align 4
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @LibAliasSetTarget(i32 %17, i64 %19)
  store i32 0, i32* %2, align 4
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %86

31:                                               ; preds = %21
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %36 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcasecmp(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %31
  %44 = load i8*, i8** @INADDR_ANY, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @la, align 4
  %48 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @LibAliasSetTarget(i32 %47, i64 %49)
  store i32 0, i32* %2, align 4
  br label %86

51:                                               ; preds = %31
  %52 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %53 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %56 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @GetIpAddr(i32 %60)
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = bitcast %struct.in_addr* %4 to i8*
  %64 = bitcast %struct.in_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INADDR_NONE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %51
  %70 = load i32, i32* @LogWARN, align 4
  %71 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %72 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %75 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @log_Printf(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 1, i32* %2, align 4
  br label %86

81:                                               ; preds = %51
  %82 = load i32, i32* @la, align 4
  %83 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @LibAliasSetTarget(i32 %82, i64 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %69, %43, %30, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @LibAliasSetTarget(i32, i64) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i64 @GetIpAddr(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

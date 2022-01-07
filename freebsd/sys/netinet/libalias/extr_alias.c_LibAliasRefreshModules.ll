; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasRefreshModules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasRefreshModules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.LibAliasRefreshModules.conf = private unnamed_addr constant [19 x i8] c"/etc/libalias.conf\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fopen(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LibAliasRefreshModules() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [19 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [19 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.LibAliasRefreshModules.conf, i32 0, i32 0), i64 19, i1 false)
  %7 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = getelementptr inbounds [19 x i8], [19 x i8]* %2, i64 0, i64 0
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 (...) @LibAliasUnLoadAllModule()
  br label %16

16:                                               ; preds = %61, %53, %14
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @fgets(i8* %17, i32 256, i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @feof(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %62

24:                                               ; preds = %16
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %61

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @isspace(i8 signext %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %30

46:                                               ; preds = %41, %30
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %16

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %57
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %60 = call i32 @LibAliasLoadModule(i8* %59)
  br label %61

61:                                               ; preds = %54, %24
  br label %16

62:                                               ; preds = %23
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @fclose(i32* %63)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @LibAliasUnLoadAllModule(...) #2

declare dso_local i32 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @isspace(i8 signext) #2

declare dso_local i32 @LibAliasLoadModule(i8*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/ptrace/extr_scescx.c_decode_pl_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/ptrace/extr_scescx.c_decode_pl_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_tag = type { i32, i8* }
%struct.ptrace_lwpinfo = type { i32 }

@decode_pl_flags.c = internal global [128 x i8] zeroinitializer, align 16
@decode_pl_flags.decode = internal global [12 x %struct.decode_tag] [%struct.decode_tag { i32 133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0) }, %struct.decode_tag { i32 138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0) }, %struct.decode_tag { i32 132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0) }, %struct.decode_tag { i32 131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, %struct.decode_tag { i32 136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0) }, %struct.decode_tag { i32 130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0) }, %struct.decode_tag { i32 134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.decode_tag { i32 137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, %struct.decode_tag { i32 139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0) }, %struct.decode_tag { i32 135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }, %struct.decode_tag { i32 129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.decode_tag { i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"BOUND\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SCE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SCX\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"FORKED\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CHILD\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"LWPBORN\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"LWPEXITED\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"VFORKED\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"VFORKDONE\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@NBBY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"<%d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ptrace_lwpinfo*)* @decode_pl_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_pl_flags(%struct.ptrace_lwpinfo* %0) #0 {
  %2 = alloca %struct.ptrace_lwpinfo*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ptrace_lwpinfo* %0, %struct.ptrace_lwpinfo** %2, align 8
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_pl_flags.c, i64 0, i64 0), align 16
  store i32 1, i32* %4, align 4
  %7 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %2, align 8
  %8 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %45, %1
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [12 x %struct.decode_tag], [12 x %struct.decode_tag]* @decode_pl_flags.decode, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.decode_tag, %struct.decode_tag* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

27:                                               ; preds = %23
  %28 = call i32 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_pl_flags.c, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 128)
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [12 x %struct.decode_tag], [12 x %struct.decode_tag]* @decode_pl_flags.decode, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.decode_tag, %struct.decode_tag* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_pl_flags.c, i64 0, i64 0), i8* %34, i32 128)
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [12 x %struct.decode_tag], [12 x %struct.decode_tag]* @decode_pl_flags.decode, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.decode_tag, %struct.decode_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %14
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %10

48:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = load i32, i32* @NBBY, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %68

66:                                               ; preds = %62
  %67 = call i32 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_pl_flags.c, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 128)
  br label %68

68:                                               ; preds = %66, %65
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @snprintf(i8* %69, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %73 = call i32 @strlcat(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_pl_flags.c, i64 0, i64 0), i8* %72, i32 128)
  br label %74

74:                                               ; preds = %68, %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %49

78:                                               ; preds = %49
  ret i8* getelementptr inbounds ([128 x i8], [128 x i8]* @decode_pl_flags.c, i64 0, i64 0)
}

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

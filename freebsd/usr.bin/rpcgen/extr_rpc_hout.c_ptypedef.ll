; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_ptypedef.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_ptypedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"bool_t\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@fout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"struct {\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\09u_int %s_len;\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\09%s%s *%s_val;\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"} %s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s%s *%s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"%s%s %s[%s]\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s%s %s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ptypedef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptypedef(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @streq(i8* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %107, label %24

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @streq(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i32 129, i32* %6, align 4
  br label %41

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @streq(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %40

34:                                               ; preds = %29
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @streq(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %39

39:                                               ; preds = %38, %34
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @undefined2(i8* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @s_print(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %59)
  br label %63

61:                                               ; preds = %46, %41
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i32, i32* @fout, align 4
  %65 = call i32 (i32, i8*, ...) @f_print(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  switch i32 %66, label %104 [
    i32 130, label %67
    i32 129, label %81
    i32 128, label %87
    i32 131, label %98
  ]

67:                                               ; preds = %63
  %68 = load i32, i32* @fout, align 4
  %69 = call i32 (i32, i8*, ...) @f_print(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* @fout, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 (i32, i8*, ...) @f_print(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @fout, align 4
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %75 = load i8*, i8** %4, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 (i32, i8*, ...) @f_print(i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %74, i8* %75, i8* %76)
  %78 = load i32, i32* @fout, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 (i32, i8*, ...) @f_print(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %79)
  br label %104

81:                                               ; preds = %63
  %82 = load i32, i32* @fout, align 4
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 (i32, i8*, ...) @f_print(i32 %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %83, i8* %84, i8* %85)
  br label %104

87:                                               ; preds = %63
  %88 = load i32, i32* @fout, align 4
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @f_print(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %89, i8* %90, i8* %91, i32 %96)
  br label %104

98:                                               ; preds = %63
  %99 = load i32, i32* @fout, align 4
  %100 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %101 = load i8*, i8** %4, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 (i32, i8*, ...) @f_print(i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %100, i8* %101, i8* %102)
  br label %104

104:                                              ; preds = %63, %98, %87, %81, %67
  %105 = load i32, i32* @fout, align 4
  %106 = call i32 (i32, i8*, ...) @f_print(i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %1
  ret void
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @undefined2(i8*, i8*) #1

declare dso_local i32 @s_print(i8*, i8*, i64) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

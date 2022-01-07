; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_printarglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_clntout.c_printarglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }

@newstyle = common dso_local global i32 0, align 4
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"*argp, \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"*%s, %s%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"*argp, %s%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(%s%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"*%s, \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printarglist(%struct.TYPE_7__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @newstyle, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @fout, align 4
  %14 = call i32 (i32, i8*, ...) @f_print(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ptype(i32 %21, i32 %28, i32 1)
  %30 = load i64, i64* @mtflag, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %12
  %33 = load i32, i32* @fout, align 4
  %34 = call i32 (i32, i8*, ...) @f_print(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ptype(i32 %37, i32 %40, i32 1)
  %42 = load i32, i32* @fout, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i32, i8*, ...) @f_print(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %44, i8* %45)
  br label %52

47:                                               ; preds = %12
  %48 = load i32, i32* @fout, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i32, i8*, ...) @f_print(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %32
  br label %129

53:                                               ; preds = %4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @streq(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %53
  %64 = load i64, i64* @mtflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32, i32* @fout, align 4
  %68 = call i32 (i32, i8*, ...) @f_print(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ptype(i32 %71, i32 %74, i32 1)
  %76 = load i32, i32* @fout, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 (i32, i8*, ...) @f_print(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %77, i8* %78, i8* %79)
  br label %86

81:                                               ; preds = %63
  %82 = load i32, i32* @fout, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i32, i8*, ...) @f_print(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %81, %66
  br label %128

87:                                               ; preds = %53
  %88 = load i32, i32* @fout, align 4
  %89 = call i32 (i32, i8*, ...) @f_print(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %9, align 8
  br label %94

94:                                               ; preds = %105, %87
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = icmp ne %struct.TYPE_8__* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = call i32 @pdeclaration(i32 %101, %struct.TYPE_9__* %103, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %9, align 8
  br label %94

109:                                              ; preds = %94
  %110 = load i64, i64* @mtflag, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ptype(i32 %115, i32 %118, i32 1)
  %120 = load i32, i32* @fout, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (i32, i8*, ...) @f_print(i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %112, %109
  %124 = load i32, i32* @fout, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 (i32, i8*, ...) @f_print(i32 %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %125, i8* %126)
  br label %128

128:                                              ; preds = %123, %86
  br label %129

129:                                              ; preds = %128, %52
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @ptype(i32, i32, i32) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @pdeclaration(i32, %struct.TYPE_9__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

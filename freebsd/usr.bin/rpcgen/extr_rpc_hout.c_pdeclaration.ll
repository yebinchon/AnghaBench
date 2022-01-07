; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_pdeclaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_hout.c_pdeclaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"char *%s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"bool_t\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%s%s %s\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s%s %s[%s]\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s%s *%s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"struct {\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\09u_int %s_len;\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\09%s%s *%s_val;\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"} %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdeclaration(i8* %0, %struct.TYPE_3__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @streq(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %144

18:                                               ; preds = %4
  %19 = load i32, i32* @fout, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @tabify(i32 %19, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @streq(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @fout, align 4
  %35 = call i32 (i32, i8*, ...) @f_print(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28, %18
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @streq(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @fout, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @f_print(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %140

48:                                               ; preds = %36
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @streq(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %79

55:                                               ; preds = %48
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @streq(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %78

62:                                               ; preds = %55
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @s_print(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %71)
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  store i8* %73, i8** %10, align 8
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %11, align 8
  br label %78

78:                                               ; preds = %74, %61
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %139 [
    i32 131, label %83
    i32 128, label %91
    i32 129, label %102
    i32 130, label %110
  ]

83:                                               ; preds = %79
  %84 = load i32, i32* @fout, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @f_print(i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %85, i8* %86, i32 %89)
  br label %139

91:                                               ; preds = %79
  %92 = load i32, i32* @fout, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i8*, ...) @f_print(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %93, i8* %94, i32 %97, i32 %100)
  br label %139

102:                                              ; preds = %79
  %103 = load i32, i32* @fout, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @f_print(i32 %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %104, i8* %105, i32 %108)
  br label %139

110:                                              ; preds = %79
  %111 = load i32, i32* @fout, align 4
  %112 = call i32 (i32, i8*, ...) @f_print(i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %113 = load i32, i32* @fout, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @tabify(i32 %113, i32 %114)
  %116 = load i32, i32* @fout, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @f_print(i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @fout, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @tabify(i32 %121, i32 %122)
  %124 = load i32, i32* @fout, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @f_print(i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %125, i8* %126, i32 %129)
  %131 = load i32, i32* @fout, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @tabify(i32 %131, i32 %132)
  %134 = load i32, i32* @fout, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @f_print(i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %79, %110, %102, %91, %83
  br label %140

140:                                              ; preds = %139, %42
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* @fout, align 4
  %143 = call i32 @fputs(i8* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %17
  ret void
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @tabify(i32, i32) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @s_print(i8*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

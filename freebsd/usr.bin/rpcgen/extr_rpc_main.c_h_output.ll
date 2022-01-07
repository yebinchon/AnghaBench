; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_h_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_h_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"STDIN_\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"#ifndef _%s\0A#define\09_%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"#include <rpc/rpc.h>\0A\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"#include <pthread.h>\0A\00", align 1
@CCflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"\0A#ifdef __cplusplus\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"extern \22C\22 {\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"#endif\0A\0A\00", align 1
@defined = common dso_local global %struct.TYPE_6__* null, align 8
@xdrfunc_head = common dso_local global %struct.TYPE_5__* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"\0A/* the xdr functions */\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@tblflag = common dso_local global i64 0, align 8
@rpcgen_table_dcl = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\0A#endif /* !_%s */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i32)* @h_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_output(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @open_input(i8* %18, i8* %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @extendfile(i8* %24, i8* %25)
  br label %29

27:                                               ; preds = %5
  %28 = load i8*, i8** %9, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i8* [ %26, %23 ], [ %28, %27 ]
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @open_output(i8* %31, i8* %32)
  %34 = call i32 (...) @add_warning()
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37, %29
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** %12, align 8
  br label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8* [ %44, %43 ], [ %46, %45 ]
  %49 = call i8* @generate_guard(i8* %48)
  store i8* %49, i8** %17, align 8
  store i8* %49, i8** %14, align 8
  br label %51

50:                                               ; preds = %37
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* @fout, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 (i32, i8*, ...) @f_print(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %53, i8* %54)
  %56 = load i32, i32* @fout, align 4
  %57 = call i32 (i32, i8*, ...) @f_print(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64, i64* @mtflag, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @fout, align 4
  %62 = call i32 (i32, i8*, ...) @f_print(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %51
  %64 = load i64, i64* @CCflag, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @fout, align 4
  %68 = call i32 (i32, i8*, ...) @f_print(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @fout, align 4
  %70 = call i32 (i32, i8*, ...) @f_print(i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* @fout, align 4
  %72 = call i32 (i32, i8*, ...) @f_print(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i32, i32* @fout, align 4
  %75 = call i64 @ftell(i32 %74)
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %79, %73
  %77 = call i32* (...) @get_definition()
  store i32* %77, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @print_datadef(i32* %80, i32 %81)
  br label %76

83:                                               ; preds = %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @defined, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %15, align 8
  br label %85

85:                                               ; preds = %94, %83
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @print_funcdef(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %15, align 8
  br label %85

98:                                               ; preds = %85
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xdrfunc_head, align 8
  %100 = icmp ne %struct.TYPE_5__* %99, null
  br i1 %100, label %101, label %130

101:                                              ; preds = %98
  %102 = load i32, i32* @fout, align 4
  %103 = call i32 (i32, i8*, ...) @f_print(i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %104 = load i64, i64* @CCflag, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, i32* @fout, align 4
  %108 = call i32 (i32, i8*, ...) @f_print(i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* @fout, align 4
  %110 = call i32 (i32, i8*, ...) @f_print(i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @fout, align 4
  %112 = call i32 (i32, i8*, ...) @f_print(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xdrfunc_head, align 8
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %16, align 8
  br label %115

115:                                              ; preds = %118, %113
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %117 = icmp ne %struct.TYPE_5__* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @print_xdr_func_def(i32 %121, i32 %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %16, align 8
  br label %115

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %98
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i64, i64* %13, align 8
  %135 = load i32, i32* @fout, align 4
  %136 = call i64 @ftell(i32 %135)
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @unlink(i8* %139)
  br label %151

141:                                              ; preds = %133, %130
  %142 = load i64, i64* @tblflag, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* @fout, align 4
  %146 = load i32, i32* @rpcgen_table_dcl, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 (i32, i8*, ...) @f_print(i32 %145, i8* %148)
  br label %150

150:                                              ; preds = %144, %141
  br label %151

151:                                              ; preds = %150, %138
  %152 = load i32, i32* @fout, align 4
  %153 = call i32 (i32, i8*, ...) @f_print(i32 %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @fout, align 4
  %155 = call i32 (i32, i8*, ...) @f_print(i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %156 = load i32, i32* @fout, align 4
  %157 = call i32 (i32, i8*, ...) @f_print(i32 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %158 = load i32, i32* @fout, align 4
  %159 = load i8*, i8** %14, align 8
  %160 = call i32 (i32, i8*, ...) @f_print(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %159)
  %161 = load i8*, i8** %17, align 8
  %162 = call i32 @free(i8* %161)
  ret void
}

declare dso_local i32 @open_input(i8*, i8*) #1

declare dso_local i8* @extendfile(i8*, i8*) #1

declare dso_local i32 @open_output(i8*, i8*) #1

declare dso_local i32 @add_warning(...) #1

declare dso_local i8* @generate_guard(i8*) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i64 @ftell(i32) #1

declare dso_local i32* @get_definition(...) #1

declare dso_local i32 @print_datadef(i32*, i32) #1

declare dso_local i32 @print_funcdef(i32, i32) #1

declare dso_local i32 @print_xdr_func_def(i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

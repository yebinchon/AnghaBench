; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_get_prog_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_get_prog_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i8*, i8*, i32* }
%struct.TYPE_8__ = type { i64, i8* }

@DEF_PROGRAM = common dso_local global i64 0, align 8
@TOK_RPAREN = common dso_local global i64 0, align 8
@REL_ALIAS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@TOK_IDENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@ARGNAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"opaque -- illegal argument type\00", align 1
@TOK_STAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"pointer to string not allowed in program arguments\00", align 1
@REL_POINTER = common dso_local global i64 0, align 8
@TOK_LANGLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"arrays cannot be declared as arguments to procedures -- use typedef\00", align 1
@REL_ARRAY = common dso_local global i64 0, align 8
@TOK_RANGLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"~0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i32)* @get_prog_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_prog_declaration(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca [10 x i8], align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @DEF_PROGRAM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = call i32 @peek(%struct.TYPE_8__* %7)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TOK_RPAREN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i8*, i8** @REL_ALIAS, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store i8* null, i8** %28, align 8
  br label %149

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @get_type(i32** %32, i8** %34, i64 %35)
  %37 = load i8*, i8** @REL_ALIAS, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @TOK_IDENT, align 4
  %42 = call i64 @peekscan(i32 %41, %struct.TYPE_8__* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcpy(i8* %45, i8* %47)
  br label %54

49:                                               ; preds = %30
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %51 = load i8*, i8** @ARGNAME, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %56 = call i8* @xstrdup(i8* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @streq(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %149

65:                                               ; preds = %54
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @streq(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i32, i32* @TOK_STAR, align 4
  %75 = call i64 @peekscan(i32 %74, %struct.TYPE_8__* %7)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @streq(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %77
  %86 = load i64, i64* @REL_POINTER, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @TOK_IDENT, align 4
  %90 = call i64 @peekscan(i32 %89, %struct.TYPE_8__* %7)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @xstrdup(i8* %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %92, %85
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32, i32* @TOK_LANGLE, align 4
  %101 = call i64 @peekscan(i32 %100, %struct.TYPE_8__* %7)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @streq(i8* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %103
  %112 = load i64, i64* @REL_ARRAY, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* @TOK_RANGLE, align 4
  %116 = call i64 @peekscan(i32 %115, %struct.TYPE_8__* %7)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %120, align 8
  br label %129

121:                                              ; preds = %111
  %122 = call i32 @scan_num(%struct.TYPE_8__* %7)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* @TOK_RANGLE, align 4
  %128 = call i32 @scan(i32 %127, %struct.TYPE_8__* %7)
  br label %129

129:                                              ; preds = %121, %118
  br label %130

130:                                              ; preds = %129, %99
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @streq(i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @REL_ARRAY, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i64, i64* @REL_ARRAY, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %147, align 8
  br label %148

148:                                              ; preds = %142, %136
  br label %149

149:                                              ; preds = %18, %64, %148, %130
  ret void
}

declare dso_local i32 @peek(%struct.TYPE_8__*) #1

declare dso_local i32 @get_type(i32**, i8**, i64) #1

declare dso_local i64 @peekscan(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @scan_num(%struct.TYPE_8__*) #1

declare dso_local i32 @scan(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

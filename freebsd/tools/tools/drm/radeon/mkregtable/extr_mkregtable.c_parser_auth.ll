; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/drm/radeon/mkregtable/extr_mkregtable.c_parser_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/drm/radeon/mkregtable/extr_mkregtable.c_parser_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.offset = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"(0x[0-9a-fA-F]*) *([_a-zA-Z0-9]*)\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to compile regular expression\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to open: %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@gpu_name = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Error matching regular expression %d in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.table*, i8*)* @parser_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parser_auth(%struct.table* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x %struct.TYPE_3__], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.offset*, align 8
  %16 = alloca [10 x i8], align 1
  %17 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @REG_EXTENDED, align 4
  %19 = call i64 @regcomp(i32* %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %153

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %3, align 4
  br label %153

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @SEEK_END, align 4
  %36 = call i32 @fseek(i32* %34, i32 0, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @ftell(i32* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @SEEK_SET, align 4
  %41 = call i32 @fseek(i32* %39, i32 0, i32 %40)
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @fgets(i8* %42, i32 1024, i32* %43)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fclose(i32* %47)
  store i32 -1, i32* %3, align 4
  br label %153

49:                                               ; preds = %33
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %51 = load i32, i32* @gpu_name, align 4
  %52 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %53 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load i32, i32* @gpu_name, align 4
  %55 = load %struct.table*, %struct.table** %4, align 8
  %56 = getelementptr inbounds %struct.table, %struct.table* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %58 = call i8* @strtol(i8* %57, i32* null, i32 16)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %134, %49
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %62 = load i32*, i32** %6, align 8
  %63 = call i32* @fgets(i8* %61, i32 1024, i32* %62)
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @fclose(i32* %66)
  store i32 -1, i32* %3, align 4
  br label %153

68:                                               ; preds = %60
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @ftell(i32* %71)
  %73 = load i64, i64* %10, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %76
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %81 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %82 = call i32 @regexec(i32* %7, i8* %80, i32 4, %struct.TYPE_3__* %81, i32 0)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @REG_NOMATCH, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %132

87:                                               ; preds = %79
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %92, i8* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @fclose(i32* %95)
  store i32 -1, i32* %3, align 4
  br label %153

97:                                               ; preds = %87
  %98 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 16
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  %102 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %8, i64 0, i64 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 16
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %104
  store i8 0, i8* %105, align 1
  %106 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %8, i64 0, i64 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 16
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %108
  store i8 0, i8* %109, align 1
  %110 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %8, i64 0, i64 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %112
  %114 = call i8* @strtol(i8* %113, i32* null, i32 16)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call %struct.offset* @offset_new(i32 %116)
  store %struct.offset* %117, %struct.offset** %15, align 8
  %118 = load %struct.table*, %struct.table** %4, align 8
  %119 = load %struct.offset*, %struct.offset** %15, align 8
  %120 = call i32 @table_offset_add(%struct.table* %118, %struct.offset* %119)
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.table*, %struct.table** %4, align 8
  %123 = getelementptr inbounds %struct.table, %struct.table* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ugt i32 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %97
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.table*, %struct.table** %4, align 8
  %129 = getelementptr inbounds %struct.table, %struct.table* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %97
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %86
  br label %133

133:                                              ; preds = %132, %76
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  br i1 %137, label %60, label %138

138:                                              ; preds = %134
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @fclose(i32* %139)
  %141 = load %struct.table*, %struct.table** %4, align 8
  %142 = getelementptr inbounds %struct.table, %struct.table* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* %17, align 4
  %148 = load %struct.table*, %struct.table** %4, align 8
  %149 = getelementptr inbounds %struct.table, %struct.table* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %138
  %151 = load %struct.table*, %struct.table** %4, align 8
  %152 = call i32 @table_build(%struct.table* %151)
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %150, %90, %65, %46, %29, %21
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32, i8*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local %struct.offset* @offset_new(i32) #1

declare dso_local i32 @table_offset_add(%struct.table*, %struct.offset*) #1

declare dso_local i32 @table_build(%struct.table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

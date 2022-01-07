; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"parsing map \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@AUTO_MAP_PREFIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"map \22%s\22 maps to \22%s\22\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"map file \22%s\22 does not exist; falling back to directory services\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"map \22%s\22 is executable\00", align 1
@yyin = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unable to open \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"failed to handle executable map \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"done parsing map \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_map(%struct.node* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i8*, ...) @log_debugx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %4
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.node*, %struct.node** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  call void @parse_special_map(%struct.node* %42, i8* %43, i8* %44)
  br label %147

45:                                               ; preds = %30
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @checked_strdup(i8* %52)
  store i8* %53, i8** %9, align 8
  br label %77

54:                                               ; preds = %45
  %55 = load i32, i32* @AUTO_MAP_PREFIX, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i8*, i8*, ...) @log_debugx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %63, i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @F_OK, align 4
  %68 = call i32 @access(i8* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 (i8*, i8*, ...) @log_debugx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = load %struct.node*, %struct.node** %5, align 8
  %75 = load i8*, i8** %6, align 8
  call void @parse_included_map(%struct.node* %74, i8* %75)
  br label %147

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @file_is_executable(i8* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, i8*, ...) @log_debugx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %83)
  %85 = load i32*, i32** %8, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32*, i32** %8, align 8
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = call i32* (i8*, i8*, ...) @auto_popen(i8* %93, i8* %94, i8* null)
  store i32* %95, i32** @yyin, align 8
  br label %99

96:                                               ; preds = %89
  %97 = load i8*, i8** %9, align 8
  %98 = call i32* (i8*, i8*, ...) @auto_popen(i8* %97, i8* null)
  store i32* %98, i32** @yyin, align 8
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32*, i32** @yyin, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %113

104:                                              ; preds = %77
  %105 = load i8*, i8** %9, align 8
  %106 = call i32* @fopen(i8* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %106, i32** @yyin, align 8
  %107 = load i32*, i32** @yyin, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @free(i8* %114)
  store i8* null, i8** %9, align 8
  %116 = load %struct.node*, %struct.node** %5, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i8*, i8** %7, align 8
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i8* [ %121, %120 ], [ null, %122 ]
  %125 = call i32 @parse_map_yyin(%struct.node* %116, i8* %117, i8* %124)
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i32*, i32** @yyin, align 8
  %130 = call i32 @auto_pclose(i32* %129)
  store i32 %130, i32* %10, align 4
  store i32* null, i32** @yyin, align 8
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %133, %128
  br label %140

137:                                              ; preds = %123
  %138 = load i32*, i32** @yyin, align 8
  %139 = call i32 @fclose(i32* %138)
  br label %140

140:                                              ; preds = %137, %136
  store i32* null, i32** @yyin, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 (i8*, i8*, ...) @log_debugx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %141)
  %143 = load %struct.node*, %struct.node** %5, align 8
  %144 = call i32 @node_expand_includes(%struct.node* %143, i32 0)
  %145 = load %struct.node*, %struct.node** %5, align 8
  %146 = call i32 @node_expand_direct_maps(%struct.node* %145)
  br label %147

147:                                              ; preds = %140, %71, %41
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_debugx(i8*, i8*, ...) #1

declare dso_local void @parse_special_map(%struct.node*, i8*, i8*) #1

declare dso_local i8* @checked_strdup(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @log_err(i32, i8*, ...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local void @parse_included_map(%struct.node*, i8*) #1

declare dso_local i32 @file_is_executable(i8*) #1

declare dso_local i32* @auto_popen(i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @parse_map_yyin(%struct.node*, i8*, i8*) #1

declare dso_local i32 @auto_pclose(i32*) #1

declare dso_local i32 @log_errx(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @node_expand_includes(%struct.node*, i32) #1

declare dso_local i32 @node_expand_direct_maps(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

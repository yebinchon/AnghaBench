; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_convert_attrs.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_convert_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.attr_check_item* }
%struct.attr_check_item = type { i32 }
%struct.index_state = type { i32 }
%struct.conv_attrs = type { i8*, i8*, i32, i32, i32 }

@check = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"eol\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"working-tree-encoding\00", align 1
@user_convert = common dso_local global i32 0, align 4
@user_convert_tail = common dso_local global i32* null, align 8
@read_convert_config = common dso_local global i32 0, align 4
@CRLF_UNDEFINED = common dso_local global i8* null, align 8
@CRLF_BINARY = common dso_local global i8* null, align 8
@CRLF_AUTO = common dso_local global i8* null, align 8
@EOL_LF = common dso_local global i32 0, align 4
@CRLF_AUTO_INPUT = common dso_local global i8* null, align 8
@EOL_CRLF = common dso_local global i32 0, align 4
@CRLF_AUTO_CRLF = common dso_local global i8* null, align 8
@CRLF_TEXT_INPUT = common dso_local global i8* null, align 8
@CRLF_TEXT_CRLF = common dso_local global i8* null, align 8
@CRLF_TEXT = common dso_local global i8* null, align 8
@auto_crlf = common dso_local global i64 0, align 8
@AUTO_CRLF_FALSE = common dso_local global i64 0, align 8
@AUTO_CRLF_TRUE = common dso_local global i64 0, align 8
@AUTO_CRLF_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.conv_attrs*, i8*)* @convert_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_attrs(%struct.index_state* %0, %struct.conv_attrs* %1, i8* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.conv_attrs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.attr_check_item*, align 8
  %8 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.conv_attrs* %1, %struct.conv_attrs** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.attr_check_item* null, %struct.attr_check_item** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @check, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = call %struct.TYPE_4__* @attr_check_initl(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** @check, align 8
  store i32* @user_convert, i32** @user_convert_tail, align 8
  %13 = load i32, i32* @read_convert_config, align 4
  %14 = call i32 @git_config(i32 %13, i32* null)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.index_state*, %struct.index_state** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @check, align 8
  %19 = call i32 @git_check_attr(%struct.index_state* %16, i8* %17, %struct.TYPE_4__* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @check, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.attr_check_item*, %struct.attr_check_item** %21, align 8
  store %struct.attr_check_item* %22, %struct.attr_check_item** %7, align 8
  %23 = load %struct.attr_check_item*, %struct.attr_check_item** %7, align 8
  %24 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %23, i64 4
  %25 = call i8* @git_path_check_crlf(%struct.attr_check_item* %24)
  %26 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %27 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %29 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @CRLF_UNDEFINED, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %15
  %34 = load %struct.attr_check_item*, %struct.attr_check_item** %7, align 8
  %35 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %34, i64 0
  %36 = call i8* @git_path_check_crlf(%struct.attr_check_item* %35)
  %37 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %38 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %33, %15
  %40 = load %struct.attr_check_item*, %struct.attr_check_item** %7, align 8
  %41 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %40, i64 1
  %42 = call i32 @git_path_check_ident(%struct.attr_check_item* %41)
  %43 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %44 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.attr_check_item*, %struct.attr_check_item** %7, align 8
  %46 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %45, i64 2
  %47 = call i32 @git_path_check_convert(%struct.attr_check_item* %46)
  %48 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %49 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %51 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** @CRLF_BINARY, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %39
  %56 = load %struct.attr_check_item*, %struct.attr_check_item** %7, align 8
  %57 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %56, i64 3
  %58 = call i32 @git_path_check_eol(%struct.attr_check_item* %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %60 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** @CRLF_AUTO, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @EOL_LF, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** @CRLF_AUTO_INPUT, align 8
  %70 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %71 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %105

72:                                               ; preds = %64, %55
  %73 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %74 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @CRLF_AUTO, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @EOL_CRLF, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** @CRLF_AUTO_CRLF, align 8
  %84 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %85 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %104

86:                                               ; preds = %78, %72
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @EOL_LF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8*, i8** @CRLF_TEXT_INPUT, align 8
  %92 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %93 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %103

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @EOL_CRLF, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i8*, i8** @CRLF_TEXT_CRLF, align 8
  %100 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %101 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %90
  br label %104

104:                                              ; preds = %103, %82
  br label %105

105:                                              ; preds = %104, %68
  br label %106

106:                                              ; preds = %105, %39
  %107 = load %struct.attr_check_item*, %struct.attr_check_item** %7, align 8
  %108 = getelementptr inbounds %struct.attr_check_item, %struct.attr_check_item* %107, i64 5
  %109 = call i32 @git_path_check_encoding(%struct.attr_check_item* %108)
  %110 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %111 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %113 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %116 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %118 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** @CRLF_TEXT, align 8
  %121 = icmp eq i8* %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %106
  %123 = call i64 (...) @text_eol_is_crlf()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i8*, i8** @CRLF_TEXT_CRLF, align 8
  br label %129

127:                                              ; preds = %122
  %128 = load i8*, i8** @CRLF_TEXT_INPUT, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i8* [ %126, %125 ], [ %128, %127 ]
  %131 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %132 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %129, %106
  %134 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %135 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** @CRLF_UNDEFINED, align 8
  %138 = icmp eq i8* %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load i64, i64* @auto_crlf, align 8
  %141 = load i64, i64* @AUTO_CRLF_FALSE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i8*, i8** @CRLF_BINARY, align 8
  %145 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %146 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %139, %133
  %148 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %149 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** @CRLF_UNDEFINED, align 8
  %152 = icmp eq i8* %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load i64, i64* @auto_crlf, align 8
  %155 = load i64, i64* @AUTO_CRLF_TRUE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i8*, i8** @CRLF_AUTO_CRLF, align 8
  %159 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %160 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %153, %147
  %162 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %163 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** @CRLF_UNDEFINED, align 8
  %166 = icmp eq i8* %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load i64, i64* @auto_crlf, align 8
  %169 = load i64, i64* @AUTO_CRLF_INPUT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i8*, i8** @CRLF_AUTO_INPUT, align 8
  %173 = load %struct.conv_attrs*, %struct.conv_attrs** %5, align 8
  %174 = getelementptr inbounds %struct.conv_attrs, %struct.conv_attrs* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %171, %167, %161
  ret void
}

declare dso_local %struct.TYPE_4__* @attr_check_initl(i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @git_check_attr(%struct.index_state*, i8*, %struct.TYPE_4__*) #1

declare dso_local i8* @git_path_check_crlf(%struct.attr_check_item*) #1

declare dso_local i32 @git_path_check_ident(%struct.attr_check_item*) #1

declare dso_local i32 @git_path_check_convert(%struct.attr_check_item*) #1

declare dso_local i32 @git_path_check_eol(%struct.attr_check_item*) #1

declare dso_local i32 @git_path_check_encoding(%struct.attr_check_item*) #1

declare dso_local i64 @text_eol_is_crlf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

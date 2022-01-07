; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_filter_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_filter_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%sfilter: no arguments.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"trailing arguments after \22list\22 ignored.\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\22%s\22 is neither an index nor a filter subcommand.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"stray arguments after \22%s\22.\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"\22prio\22 is the only valid keyword after \22%s\22, found \22%s\22 instead.\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"%s \22%s\22; must be \220\22 or \221\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @filter_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_cmd(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %176

21:                                               ; preds = %3
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @show_filters(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %176

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i8**, i8*** %6, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @get_filter_mode(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %176

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load i8**, i8*** %6, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = call i32 @set_filter_mode(i32 %58, i8** %60)
  store i32 %61, i32* %4, align 4
  br label %176

62:                                               ; preds = %50, %47
  %63 = load i8**, i8*** %6, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @str_to_number(i8* %65, i32* null, i64* %8)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %62
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %8, align 8
  %76 = icmp sgt i64 %75, 4294967295
  br i1 %76, label %77, label %87

77:                                               ; preds = %74, %71, %62
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i64 -1, i64* %9, align 8
  br label %170

81:                                               ; preds = %77
  %82 = load i8**, i8*** %6, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @EINVAL, align 4
  store i32 %86, i32* %4, align 4
  br label %176

87:                                               ; preds = %74
  %88 = load i64, i64* %8, align 8
  store i64 %88, i64* %9, align 8
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %94, label %165

94:                                               ; preds = %91, %87
  %95 = load i8**, i8*** %6, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load i8**, i8*** %6, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %165

106:                                              ; preds = %100, %94
  store i32 0, i32* %11, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %160

109:                                              ; preds = %106
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i8**, i8*** %6, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %4, align 4
  br label %176

118:                                              ; preds = %109
  %119 = load i8**, i8*** %6, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load i8**, i8*** %6, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i8**, i8*** %6, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i8* %127, i8* %130)
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %4, align 4
  br label %176

133:                                              ; preds = %118
  %134 = load i8**, i8*** %6, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @str_to_number(i8* %136, i32* null, i64* %8)
  store i8* %137, i8** %10, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load i64, i64* %8, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %8, align 8
  %147 = icmp sgt i64 %146, 1
  br i1 %147, label %148, label %157

148:                                              ; preds = %145, %142, %133
  %149 = load i8**, i8*** %6, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 2
  %151 = load i8*, i8** %150, align 8
  %152 = load i8**, i8*** %6, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 3
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %151, i8* %154)
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* %4, align 4
  br label %176

157:                                              ; preds = %145
  %158 = load i64, i64* %8, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %157, %106
  %161 = load i64, i64* %9, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @del_filter(i64 %161, i32 %162, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %176

165:                                              ; preds = %100, %91
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %5, align 4
  %168 = load i8**, i8*** %6, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i32 1
  store i8** %169, i8*** %6, align 8
  br label %170

170:                                              ; preds = %165, %80
  %171 = load i64, i64* %9, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load i8**, i8*** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @set_filter(i64 %171, i32 %172, i8** %173, i32 %174)
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %170, %160, %148, %124, %112, %81, %56, %44, %32, %14
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @show_filters(i32) #1

declare dso_local i32 @get_filter_mode(i32) #1

declare dso_local i32 @set_filter_mode(i32, i8**) #1

declare dso_local i8* @str_to_number(i8*, i32*, i64*) #1

declare dso_local i32 @del_filter(i64, i32, i32) #1

declare dso_local i32 @set_filter(i64, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

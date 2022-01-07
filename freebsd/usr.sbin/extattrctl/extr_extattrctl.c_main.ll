; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/extattrctl/extr_extattrctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/extattrctl/extr_extattrctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@UFS_EXTATTR_CMD_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"extattrctl start\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@UFS_EXTATTR_CMD_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"extattrctl stop\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"extattrctl enable\00", align 1
@UFS_EXTATTR_CMD_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"extattrctl disable\00", align 1
@UFS_EXTATTR_CMD_DISABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"initattr\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"showattr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @usage()
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @UFS_EXTATTR_CMD_START, align 4
  %28 = call i32 @extattrctl(i8* %26, i32 %27, i8* null, i32 0, i8* null)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %173

33:                                               ; preds = %23
  br label %172

34:                                               ; preds = %12
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @UFS_EXTATTR_CMD_STOP, align 4
  %50 = call i32 @extattrctl(i8* %48, i32 %49, i8* null, i32 0, i8* null)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %173

55:                                               ; preds = %45
  br label %171

56:                                               ; preds = %34
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %94, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 6
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @extattr_string_to_namespace(i8* %70, i32* %7)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %173

76:                                               ; preds = %67
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @UFS_EXTATTR_CMD_ENABLE, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 5
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 4
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @extattrctl(i8* %79, i32 %80, i8* %83, i32 %84, i8* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %173

93:                                               ; preds = %76
  br label %170

94:                                               ; preds = %56
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 5
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (...) @usage()
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @extattr_string_to_namespace(i8* %108, i32* %7)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %173

114:                                              ; preds = %105
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 2
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* @UFS_EXTATTR_CMD_DISABLE, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 4
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @extattrctl(i8* %117, i32 %118, i8* null, i32 %119, i8* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %173

128:                                              ; preds = %114
  br label %169

129:                                              ; preds = %94
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %4, align 4
  %137 = sub nsw i32 %136, 2
  store i32 %137, i32* %4, align 4
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 2
  store i8** %139, i8*** %5, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i8**, i8*** %5, align 8
  %142 = call i32 @initattr(i32 %140, i8** %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  store i32 -1, i32* %3, align 4
  br label %173

146:                                              ; preds = %135
  br label %168

147:                                              ; preds = %129
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @strcmp(i8* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* %4, align 4
  %155 = sub nsw i32 %154, 2
  store i32 %155, i32* %4, align 4
  %156 = load i8**, i8*** %5, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 2
  store i8** %157, i8*** %5, align 8
  %158 = load i32, i32* %4, align 4
  %159 = load i8**, i8*** %5, align 8
  %160 = call i32 @showattr(i32 %158, i8** %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  store i32 -1, i32* %3, align 4
  br label %173

164:                                              ; preds = %153
  br label %167

165:                                              ; preds = %147
  %166 = call i32 (...) @usage()
  br label %167

167:                                              ; preds = %165, %164
  br label %168

168:                                              ; preds = %167, %146
  br label %169

169:                                              ; preds = %168, %128
  br label %170

170:                                              ; preds = %169, %93
  br label %171

171:                                              ; preds = %170, %55
  br label %172

172:                                              ; preds = %171, %33
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %163, %145, %126, %112, %91, %74, %53, %31
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @extattrctl(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @extattr_string_to_namespace(i8*, i32*) #1

declare dso_local i32 @initattr(i32, i8**) #1

declare dso_local i32 @showattr(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

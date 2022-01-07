; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_is_fortfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_is_fortfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_fortfile.suflist = internal global [14 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"dat\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pas\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ftn\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ins.c\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ins,pas\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ins.ftn\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sml\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"is_fortfile(%s) returns \00", align 1
@All_forts = common dso_local global i32 0, align 4
@Offend = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"FALSE (offending file)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"FALSE (file starts with '.')\0A\00", align 1
@Fortunes_only = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"fortunes\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"FALSE (check fortunes only)\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"FALSE (file has suffix \22.%s\22)\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c".dat\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"FALSE (no readable \22.dat\22 file)\0A\00", align 1
@WriteToDisk = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [5 x i8] c".pos\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"TRUE\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i32)* @is_fortfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_fortfile(i8* %0, i8** %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = call i32 @DPRINTF(i32 2, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %4
  %20 = load i32, i32* @All_forts, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @Offend, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 111
  br label %43

43:                                               ; preds = %34, %22
  %44 = phi i1 [ false, %22 ], [ %42, %34 ]
  %45 = zext i1 %44 to i32
  %46 = xor i32 %25, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @DPRINTF(i32 2, i32 ptrtoint ([24 x i8]* @.str.14 to i32))
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %5, align 4
  br label %164

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %19, %4
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @strrchr(i8* %54, i8 signext 47)
  store i8* %55, i8** %11, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %11, align 8
  br label %62

59:                                               ; preds = %53
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %59, %57
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 @DPRINTF(i32 2, i32 ptrtoint ([30 x i8]* @.str.15 to i32))
  %70 = load i32, i32* @FALSE, align 4
  store i32 %70, i32* %5, align 4
  br label %164

71:                                               ; preds = %62
  %72 = load i64, i64* @Fortunes_only, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i8*, i8** %11, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 8)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 @DPRINTF(i32 2, i32 ptrtoint ([29 x i8]* @.str.17 to i32))
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %5, align 4
  br label %164

82:                                               ; preds = %74, %71
  %83 = load i8*, i8** %11, align 8
  %84 = call i8* @strrchr(i8* %83, i8 signext 46)
  store i8* %84, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %110, %86
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [14 x i8*], [14 x i8*]* @is_fortfile.suflist, i64 0, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [14 x i8*], [14 x i8*]* @is_fortfile.suflist, i64 0, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %96, i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = call i32 @DPRINTF(i32 2, i32 %106)
  %108 = load i32, i32* @FALSE, align 4
  store i32 %108, i32* %5, align 4
  br label %164

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %89

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %82
  %115 = load i8*, i8** %6, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = add nsw i32 %117, 4
  %119 = call i8* @copy(i8* %115, i32 %118)
  store i8* %119, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @strcat(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %122 = load i8*, i8** %12, align 8
  %123 = load i32, i32* @R_OK, align 4
  %124 = call i64 @access(i8* %122, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %114
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 @DPRINTF(i32 2, i32 ptrtoint ([33 x i8]* @.str.20 to i32))
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %5, align 4
  br label %164

132:                                              ; preds = %114
  %133 = load i8**, i8*** %7, align 8
  %134 = icmp ne i8** %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i8*, i8** %12, align 8
  %137 = load i8**, i8*** %7, align 8
  store i8* %136, i8** %137, align 8
  br label %141

138:                                              ; preds = %132
  %139 = load i8*, i8** %12, align 8
  %140 = call i32 @free(i8* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i8**, i8*** %8, align 8
  %143 = icmp ne i8** %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i64, i64* @WriteToDisk, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = add nsw i32 %150, 4
  %152 = call i8* @copy(i8* %148, i32 %151)
  %153 = load i8**, i8*** %8, align 8
  store i8* %152, i8** %153, align 8
  %154 = load i8**, i8*** %8, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strcat(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %159

157:                                              ; preds = %144
  %158 = load i8**, i8*** %8, align 8
  store i8* null, i8** %158, align 8
  br label %159

159:                                              ; preds = %157, %147
  br label %160

160:                                              ; preds = %159, %141
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 @DPRINTF(i32 2, i32 ptrtoint ([6 x i8]* @.str.22 to i32))
  %163 = load i32, i32* @TRUE, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %126, %103, %78, %67, %48
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @DPRINTF(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @copy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

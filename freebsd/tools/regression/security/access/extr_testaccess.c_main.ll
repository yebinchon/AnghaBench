; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/access/extr_testaccess.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/access/extr_testaccess.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"testaccess must run as root.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@ROOT_UID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"setresuid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"setgroups\00", align 1
@WHEEL_GID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"setresgid\00", align 1
@TEST_UID_ONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"setresuid.1\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"saved uid used instead of real uid\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"restoreprivilege\00", align 1
@TEST_UID_TWO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"setresid.2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Effective uid was used instead of real uid in access().\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@TEST_GID_ONE = common dso_local global i32 0, align 4
@TEST_GID_TWO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"setresgid.1\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"setresuid.3\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"test4\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"saved gid used instead of real gid\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"test5\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"Effective gid was used instead of real gid in access().\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"test6\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"%d errors seen.\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

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
  %8 = call i64 (...) @geteuid()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @exit(i32 %13) #3
  unreachable

15:                                               ; preds = %2
  %16 = call i32 (...) @setup()
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = call i32 (...) @cleanup()
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %15
  %24 = load i32, i32* @ROOT_UID, align 4
  %25 = load i32, i32* @ROOT_UID, align 4
  %26 = load i32, i32* @ROOT_UID, align 4
  %27 = call i32 @setresuid(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (...) @cleanup()
  br label %33

33:                                               ; preds = %30, %23
  %34 = call i32 @setgroups(i32 0, i32* null)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (...) @cleanup()
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* @WHEEL_GID, align 4
  %42 = load i32, i32* @WHEEL_GID, align 4
  %43 = load i32, i32* @WHEEL_GID, align 4
  %44 = call i32 @setresgid(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 (...) @cleanup()
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i32, i32* @TEST_UID_ONE, align 4
  %52 = load i32, i32* @TEST_UID_ONE, align 4
  %53 = load i32, i32* @ROOT_UID, align 4
  %54 = call i32 @setresuid(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %59 = call i32 (...) @cleanup()
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @exit(i32 %60) #3
  unreachable

62:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  %63 = load i32, i32* @R_OK, align 4
  %64 = call i32 @access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = call i32 (...) @restoreprivilege()
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %78 = call i32 (...) @cleanup()
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = call i32 @exit(i32 %79) #3
  unreachable

81:                                               ; preds = %72
  %82 = load i32, i32* @TEST_UID_ONE, align 4
  %83 = load i32, i32* @TEST_UID_TWO, align 4
  %84 = load i32, i32* @ROOT_UID, align 4
  %85 = call i32 @setresuid(i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %90 = call i32 (...) @cleanup()
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  %92 = call i32 @exit(i32 %91) #3
  unreachable

93:                                               ; preds = %81
  %94 = load i32, i32* @R_OK, align 4
  %95 = call i32 @access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @stderr, align 4
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @R_OK, align 4
  %105 = call i32 @access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = call i32 (...) @restoreprivilege()
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %119 = call i32 (...) @cleanup()
  %120 = load i32, i32* @EXIT_FAILURE, align 4
  %121 = call i32 @exit(i32 %120) #3
  unreachable

122:                                              ; preds = %113
  %123 = load i32, i32* @TEST_GID_ONE, align 4
  %124 = load i32, i32* @TEST_GID_TWO, align 4
  %125 = load i32, i32* @WHEEL_GID, align 4
  %126 = call i32 @setresgid(i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %131 = call i32 (...) @cleanup()
  %132 = load i32, i32* @EXIT_FAILURE, align 4
  %133 = call i32 @exit(i32 %132) #3
  unreachable

134:                                              ; preds = %122
  %135 = load i32, i32* @TEST_UID_ONE, align 4
  %136 = load i32, i32* @TEST_UID_ONE, align 4
  %137 = load i32, i32* @ROOT_UID, align 4
  %138 = call i32 @setresuid(i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %143 = call i32 (...) @cleanup()
  %144 = load i32, i32* @EXIT_FAILURE, align 4
  %145 = call i32 @exit(i32 %144) #3
  unreachable

146:                                              ; preds = %134
  %147 = load i32, i32* @R_OK, align 4
  %148 = call i32 @access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @stderr, align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %146
  %155 = load i32, i32* @R_OK, align 4
  %156 = call i32 @access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0))
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i32, i32* @R_OK, align 4
  %166 = call i32 @access(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @stderr, align 4
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.17, i64 0, i64 0))
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* @stderr, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %176)
  %178 = call i32 (...) @cleanup()
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %183 = load i32, i32* @EXIT_FAILURE, align 4
  %184 = call i32 @exit(i32 %183) #3
  unreachable

185:                                              ; preds = %174
  %186 = load i32, i32* @EXIT_SUCCESS, align 4
  %187 = call i32 @exit(i32 %186) #3
  unreachable
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setup(...) #1

declare dso_local i32 @cleanup(...) #1

declare dso_local i32 @setresuid(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @setgroups(i32, i32*) #1

declare dso_local i32 @setresgid(i32, i32, i32) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @restoreprivilege(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

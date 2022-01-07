; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sendfile/extr_sendfile.c_run_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sendfile/extr_sendfile.c_run_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sendfile_test = type { i32, i32, i32, i32 }

@TEST_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"1..%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"not ok %d\0A\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"not ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_parent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [11 x %struct.sendfile_test], align 16
  store i64 0, i64* %6, align 8
  %9 = call i32 (...) @getpagesize()
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds [11 x %struct.sendfile_test], [11 x %struct.sendfile_test]* %8, i64 0, i64 0
  %11 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %10, i32 0, i32 0
  store i32 0, i32* %11, align 16
  %12 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %10, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %10, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %10, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %10, i64 1
  %16 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %15, i32 0, i32 0
  store i32 0, i32* %16, align 16
  %17 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %15, i32 0, i32 1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %15, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %15, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %15, i64 1
  %22 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %21, i32 0, i32 0
  store i32 1, i32* %22, align 16
  %23 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %21, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %21, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %21, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %21, i64 1
  %27 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %26, i32 0, i32 0
  store i32 1, i32* %27, align 16
  %28 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %26, i32 0, i32 1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %26, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %26, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %26, i64 1
  %33 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %33, align 16
  %35 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %32, i32 0, i32 1
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %32, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %32, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %32, i64 1
  %40 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %39, i32 0, i32 0
  store i32 0, i32* %40, align 16
  %41 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %39, i32 0, i32 1
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 2, %42
  store i32 %43, i32* %41, align 4
  %44 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %39, i32 0, i32 2
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %39, i32 0, i32 3
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %39, i64 1
  %47 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %46, i32 0, i32 0
  store i32 0, i32* %47, align 16
  %48 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %46, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %46, i32 0, i32 2
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %46, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %46, i64 1
  %52 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %52, align 16
  %54 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %51, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %51, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %51, i32 0, i32 3
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %51, i64 1
  %58 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %57, i32 0, i32 0
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 2, %59
  store i32 %60, i32* %58, align 16
  %61 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %57, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %57, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %57, i32 0, i32 3
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %57, i64 1
  %65 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %64, i32 0, i32 0
  %66 = load i32, i32* @TEST_PAGES, align 4
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %65, align 16
  %69 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %64, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %64, i32 0, i32 2
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %64, i32 0, i32 3
  store i32 0, i32* %71, align 4
  %72 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %64, i64 1
  %73 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %72, i32 0, i32 0
  store i32 0, i32* %73, align 16
  %74 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %72, i32 0, i32 1
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %72, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %72, i32 0, i32 3
  store i32 0, i32* %77, align 4
  store i32 11, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 1, i32* %3, align 4
  br label %80

80:                                               ; preds = %177, %0
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %180

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [11 x %struct.sendfile_test], [11 x %struct.sendfile_test]* %8, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.sendfile_test, %struct.sendfile_test* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i32, i32* @TEST_PAGES, align 4
  %96 = load i32, i32* %7, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %94, %84
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @write_test_file(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %177

106:                                              ; preds = %99
  %107 = call i32 (...) @fork()
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %177

113:                                              ; preds = %106
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (...) @run_child()
  br label %118

118:                                              ; preds = %116, %113
  %119 = call i32 @usleep(i32 250000)
  %120 = call i64 @new_test_socket(i32* %1)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @SIGALRM, align 4
  %127 = call i32 @kill(i32 %125, i32 %126)
  %128 = load i32, i32* %1, align 4
  %129 = call i32 @close(i32 %128)
  br label %177

130:                                              ; preds = %118
  %131 = load i32, i32* %1, align 4
  %132 = load i32, i32* %3, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [11 x %struct.sendfile_test], [11 x %struct.sendfile_test]* %8, i64 0, i64 %134
  %136 = bitcast %struct.sendfile_test* %135 to { i64, i64 }*
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 16
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %136, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @send_test(i32 %131, i64 %138, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %130
  %144 = load i32, i32* %3, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @SIGALRM, align 4
  %148 = call i32 @kill(i32 %146, i32 %147)
  %149 = load i32, i32* %1, align 4
  %150 = call i32 @close(i32 %149)
  br label %177

151:                                              ; preds = %130
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @close(i32 %152)
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @waitpid(i32 %154, i32* %2, i32 0)
  %156 = load i32, i32* %5, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %151
  %159 = load i32, i32* %2, align 4
  %160 = call i64 @WIFEXITED(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* %2, align 4
  %164 = call i64 @WEXITSTATUS(i32 %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* %3, align 4
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %167)
  br label %172

169:                                              ; preds = %162, %158
  %170 = load i32, i32* %3, align 4
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %169, %166
  br label %176

173:                                              ; preds = %151
  %174 = load i32, i32* %3, align 4
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173, %172
  br label %177

177:                                              ; preds = %176, %143, %122, %110, %103
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %80

180:                                              ; preds = %80
  ret void
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @write_test_file(i64) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @run_child(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @new_test_socket(i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @send_test(i32, i64, i64) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

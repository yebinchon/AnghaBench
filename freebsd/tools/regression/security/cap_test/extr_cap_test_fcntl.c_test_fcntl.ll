; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_fcntl.c_test_fcntl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/cap_test/extr_cap_test_fcntl.c_test_fcntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i8*, i32, i32, i32 }

@PASSED = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@CAP_FCNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/etc/passwd\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"SHM\00", align 1
@SHM_ANON = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"file cap\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"socket cap\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SHM cap\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Error calling fcntl('%s', F_GETFL)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fcntl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x %struct.fd], align 16
  %4 = alloca [3 x %struct.fd], align 16
  %5 = alloca [6 x %struct.fd], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fd, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @PASSED, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @CAP_READ, align 4
  %12 = load i32, i32* @CAP_FCNTL, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %2, align 4
  %14 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 0
  %15 = getelementptr inbounds %struct.fd, %struct.fd* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %14, i32 0, i32 1
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %14, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %14, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %14, i64 1
  %22 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 1
  %24 = load i32, i32* @PF_LOCAL, align 4
  %25 = load i32, i32* @SOCK_STREAM, align 4
  %26 = call i32 @socket(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %21, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %21, i64 1
  %30 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 1
  %32 = load i32, i32* @SHM_ANON, align 4
  %33 = load i32, i32* @O_RDWR, align 4
  %34 = call i32 @shm_open(i32 %32, i32 %33, i32 384)
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.fd, %struct.fd* %29, i32 0, i32 3
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 0
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @REQUIRE(i32 %39)
  %41 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 1
  %42 = getelementptr inbounds %struct.fd, %struct.fd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @REQUIRE(i32 %43)
  %45 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 2
  %46 = getelementptr inbounds %struct.fd, %struct.fd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @REQUIRE(i32 %47)
  %49 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %4, i64 0, i64 0
  %50 = getelementptr inbounds %struct.fd, %struct.fd* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.fd, %struct.fd* %49, i32 0, i32 1
  %52 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 0
  %53 = getelementptr inbounds %struct.fd, %struct.fd* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @cap_new(i32 %54, i32 %55)
  store i32 %56, i32* %51, align 8
  %57 = getelementptr inbounds %struct.fd, %struct.fd* %49, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.fd, %struct.fd* %49, i32 0, i32 3
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.fd, %struct.fd* %49, i64 1
  %60 = getelementptr inbounds %struct.fd, %struct.fd* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds %struct.fd, %struct.fd* %59, i32 0, i32 1
  %62 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 1
  %63 = getelementptr inbounds %struct.fd, %struct.fd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @cap_new(i32 %64, i32 %65)
  store i32 %66, i32* %61, align 8
  %67 = getelementptr inbounds %struct.fd, %struct.fd* %59, i32 0, i32 2
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.fd, %struct.fd* %59, i32 0, i32 3
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.fd, %struct.fd* %59, i64 1
  %70 = getelementptr inbounds %struct.fd, %struct.fd* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %70, align 8
  %71 = getelementptr inbounds %struct.fd, %struct.fd* %69, i32 0, i32 1
  %72 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 2
  %73 = getelementptr inbounds %struct.fd, %struct.fd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @cap_new(i32 %74, i32 %75)
  store i32 %76, i32* %71, align 8
  %77 = getelementptr inbounds %struct.fd, %struct.fd* %69, i32 0, i32 2
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.fd, %struct.fd* %69, i32 0, i32 3
  store i32 0, i32* %78, align 8
  %79 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %4, i64 0, i64 0
  %80 = getelementptr inbounds %struct.fd, %struct.fd* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @REQUIRE(i32 %81)
  %83 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %4, i64 0, i64 1
  %84 = getelementptr inbounds %struct.fd, %struct.fd* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @REQUIRE(i32 %85)
  %87 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %4, i64 0, i64 2
  %88 = getelementptr inbounds %struct.fd, %struct.fd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @REQUIRE(i32 %89)
  %91 = getelementptr inbounds [6 x %struct.fd], [6 x %struct.fd]* %5, i64 0, i64 0
  %92 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 0
  %93 = bitcast %struct.fd* %91 to i8*
  %94 = bitcast %struct.fd* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 16 %94, i64 24, i1 false)
  %95 = getelementptr inbounds %struct.fd, %struct.fd* %91, i64 1
  %96 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %4, i64 0, i64 0
  %97 = bitcast %struct.fd* %95 to i8*
  %98 = bitcast %struct.fd* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 16 %98, i64 24, i1 false)
  %99 = getelementptr inbounds %struct.fd, %struct.fd* %95, i64 1
  %100 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 1
  %101 = bitcast %struct.fd* %99 to i8*
  %102 = bitcast %struct.fd* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 24, i1 false)
  %103 = getelementptr inbounds %struct.fd, %struct.fd* %99, i64 1
  %104 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %4, i64 0, i64 1
  %105 = bitcast %struct.fd* %103 to i8*
  %106 = bitcast %struct.fd* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 24, i1 false)
  %107 = getelementptr inbounds %struct.fd, %struct.fd* %103, i64 1
  %108 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %3, i64 0, i64 2
  %109 = bitcast %struct.fd* %107 to i8*
  %110 = bitcast %struct.fd* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 16 %110, i64 24, i1 false)
  %111 = getelementptr inbounds %struct.fd, %struct.fd* %107, i64 1
  %112 = getelementptr inbounds [3 x %struct.fd], [3 x %struct.fd]* %4, i64 0, i64 2
  %113 = bitcast %struct.fd* %111 to i8*
  %114 = bitcast %struct.fd* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 16 %114, i64 24, i1 false)
  store i64 6, i64* %6, align 8
  %115 = call i32 (...) @cap_enter()
  %116 = call i32 @REQUIRE(i32 %115)
  store i64 0, i64* %7, align 8
  br label %117

117:                                              ; preds = %148, %0
  %118 = load i64, i64* %7, align 8
  %119 = icmp ult i64 %118, 6
  br i1 %119, label %120, label %151

120:                                              ; preds = %117
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds [6 x %struct.fd], [6 x %struct.fd]* %5, i64 0, i64 %121
  %123 = bitcast %struct.fd* %8 to i8*
  %124 = bitcast %struct.fd* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 %124, i64 24, i1 false)
  %125 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @F_GETFL, align 4
  %128 = call i32 @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i32, i32)* @fcntl, i32 %126, i32 %127, i32 0)
  %129 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CAP_READ, align 4
  %132 = call i32 @cap_new(i32 %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = call i32 @REQUIRE(i32 %132)
  %134 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @F_GETFL, align 4
  %137 = call i32 @fcntl(i32 %135, i32 %136, i32 0)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %143

139:                                              ; preds = %120
  %140 = getelementptr inbounds %struct.fd, %struct.fd* %8, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @FAIL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  br label %147

143:                                              ; preds = %120
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @F_GETFL, align 4
  %146 = call i32 @CHECK_NOTCAPABLE(i32 (i32, i32, i32)* @fcntl, i32 %144, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %7, align 8
  br label %117

151:                                              ; preds = %117
  %152 = load i32, i32* %1, align 4
  ret i32 %152
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @shm_open(i32, i32, i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @cap_new(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cap_enter(...) #1

declare dso_local i32 @CHECK_SYSCALL_SUCCEEDS(i32 (i32, i32, i32)*, i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @FAIL(i8*, i32) #1

declare dso_local i32 @CHECK_NOTCAPABLE(i32 (i32, i32, i32)*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_init_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.statd/extr_file.c_init_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i8* }

@FALSE = common dso_local global i32 0, align 4
@HEADER_LEN = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@status_fd = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"unable to open status file %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@status_info = common dso_local global %struct.TYPE_5__* null, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to mmap() status file\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@status_file_len = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"status file is corrupt\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @HEADER_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = call i64 (i8*, i32, ...) @open(i8* %13, i32 %14)
  store i64 %15, i64* @status_fd, align 8
  %16 = load i64, i64* @status_fd, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = call i64 (i8*, i32, ...) @open(i8* %23, i32 %26, i32 420)
  store i64 %27, i64* @status_fd, align 8
  %28 = load i8*, i8** @TRUE, align 8
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %18, %1
  %31 = load i64, i64* @status_fd, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @PROT_READ, align 4
  %38 = load i32, i32* @PROT_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MAP_SHARED, align 4
  %41 = load i64, i64* @status_fd, align 8
  %42 = call i64 @mmap(i32* null, i32 268435456, i32 %39, i32 %40, i64 %41, i32 0)
  %43 = inttoptr i64 %42 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** @status_info, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %45 = load i64, i64* @MAP_FAILED, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_5__*
  %47 = icmp eq %struct.TYPE_5__* %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %36
  %51 = load i64, i64* @status_fd, align 8
  %52 = load i32, i32* @SEEK_END, align 4
  %53 = call i64 @lseek(i64 %51, i64 0, i32 %52)
  store i64 %53, i64* @status_file_len, align 8
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* @status_file_len, align 8
  %58 = load i32, i32* @HEADER_LEN, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* @status_file_len, align 8
  %63 = load i32, i32* @HEADER_LEN, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 16, %68
  %70 = add i64 %64, %69
  %71 = icmp slt i64 %62, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %61, %56
  %73 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i8*, i8** @TRUE, align 8
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %61
  br label %77

77:                                               ; preds = %76, %50
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = trunc i64 %10 to i32
  %82 = call i32 @memset(i8* %12, i32 0, i32 %81)
  %83 = load i64, i64* @status_fd, align 8
  %84 = load i32, i32* @SEEK_SET, align 4
  %85 = call i64 @lseek(i64 %83, i64 0, i32 %84)
  %86 = load i64, i64* @status_fd, align 8
  %87 = load i32, i32* @HEADER_LEN, align 4
  %88 = call i32 @write(i64 %86, i8* %12, i32 %87)
  %89 = load i32, i32* @HEADER_LEN, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* @status_file_len, align 8
  br label %131

91:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %116, %91
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  store %struct.TYPE_4__* %104, %struct.TYPE_4__** %7, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load i8*, i8** @TRUE, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %109, %98
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %92

119:                                              ; preds = %92
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 2
  %124 = and i32 %123, -2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @status_info, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %119, %80
  %132 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @open(i8*, i32, ...) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i64 @mmap(i32*, i32, i32, i32, i64, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @lseek(i64, i64, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @write(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

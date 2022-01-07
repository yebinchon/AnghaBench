; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidname = type { i32 }
%struct.oid = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"dgh\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"open_memstream\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot generate output\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Cannot allocate compression buffer\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Content-Encoding: gzip\0D\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [103 x i8] c"HTTP/1.1 200 OK\0D\0AConnection: close\0D\0A%sContent-Length: %zu\0D\0AContent-Type: text/plain; version=0.0.4\0D\0A\0D\0A\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.oidname, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.oid, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.oid, align 4
  %17 = alloca %struct.oid, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca [1024 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %34, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %32 [
    i32 100, label %29
    i32 103, label %30
    i32 104, label %31
  ]

29:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  br label %34

30:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %34

31:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %31, %30, %29
  br label %22

35:                                               ; preds = %22
  %36 = load i64, i64* @optind, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @optind, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = call i32* @open_memstream(i8** %7, i64* %9)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  br label %55

53:                                               ; preds = %35
  %54 = load i32*, i32** @stdout, align 8
  store i32* %54, i32** %8, align 8
  br label %55

55:                                               ; preds = %53, %52
  %56 = call i32 @oidname_init(%struct.oidname* %6)
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = call i32 @oid_get_root(%struct.oid* %14)
  br label %61

61:                                               ; preds = %65, %59
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @oid_print(%struct.oid* %14, %struct.oidname* %6, i32 %62, i32* %63)
  br label %65

65:                                               ; preds = %61
  %66 = call i64 @oid_get_next(%struct.oid* %14, %struct.oid* %14)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %61, label %68

68:                                               ; preds = %65
  br label %100

69:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @oid_get_by_name(%struct.oid* %17, i8* %79)
  %81 = bitcast %struct.oid* %16 to i8*
  %82 = bitcast %struct.oid* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 4, i1 false)
  br label %83

83:                                               ; preds = %93, %74
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @oid_print(%struct.oid* %16, %struct.oidname* %6, i32 %84, i32* %85)
  br label %87

87:                                               ; preds = %83
  %88 = call i64 @oid_get_next(%struct.oid* %16, %struct.oid* %16)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = call i64 @oid_is_beneath(%struct.oid* %16, %struct.oid* %17)
  %92 = icmp ne i64 %91, 0
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i1 [ false, %87 ], [ %92, %90 ]
  br i1 %94, label %83, label %95

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %70

99:                                               ; preds = %70
  br label %100

100:                                              ; preds = %99, %68
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %163

103:                                              ; preds = %100
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i64 @ferror(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %8, align 8
  %109 = call i64 @fclose(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103
  %112 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i64, i64* %9, align 8
  store i64 %117, i64* %20, align 8
  %118 = load i64, i64* %20, align 8
  %119 = call i8* @malloc(i64 %118)
  store i8* %119, i8** %19, align 8
  %120 = load i8*, i8** %19, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load i8*, i8** %19, align 8
  %128 = call i64 @buf_gzip(i8* %125, i64 %126, i8* %127, i64* %20)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @free(i8* %131)
  %133 = load i8*, i8** %19, align 8
  store i8* %133, i8** %7, align 8
  %134 = load i64, i64* %20, align 8
  store i64 %134, i64* %9, align 8
  br label %138

135:                                              ; preds = %124
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %113
  %140 = load i32, i32* @STDOUT_FILENO, align 4
  %141 = load i8*, i8** %18, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @dprintf(i32 %140, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i8* %141, i64 %142)
  %144 = load i32, i32* @STDOUT_FILENO, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @write(i32 %144, i8* %145, i64 %146)
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i32, i32* @STDIN_FILENO, align 4
  %151 = load i32, i32* @SHUT_WR, align 4
  %152 = call i64 @shutdown(i32 %150, i32 %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %160, %154
  %156 = load i32, i32* @STDIN_FILENO, align 4
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %158 = call i64 @read(i32 %156, i8* %157, i32 1024)
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %155

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %139
  br label %163

163:                                              ; preds = %162, %100
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @open_memstream(i8**, i64*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @oidname_init(%struct.oidname*) #1

declare dso_local i32 @oid_get_root(%struct.oid*) #1

declare dso_local i32 @oid_print(%struct.oid*, %struct.oidname*, i32, i32*) #1

declare dso_local i64 @oid_get_next(%struct.oid*, %struct.oid*) #1

declare dso_local i32 @oid_get_by_name(%struct.oid*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @oid_is_beneath(%struct.oid*, %struct.oid*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @buf_gzip(i8*, i64, i8*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dprintf(i32, i8*, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

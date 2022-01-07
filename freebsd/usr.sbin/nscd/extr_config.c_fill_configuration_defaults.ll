; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_fill_configuration_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_config.c_fill_configuration_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration = type { i32, i32, i64, i32*, i32, i32, i32*, i32* }

@DEFAULT_SOCKET_PATH = common dso_local global i32 0, align 4
@DEFAULT_PIDFILE_PATH = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@DEFAULT_QUERY_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_THREADS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_configuration_defaults(%struct.configuration* %0) #0 {
  %2 = alloca %struct.configuration*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.configuration* %0, %struct.configuration** %2, align 8
  %5 = call i32 @TRACE_IN(void (%struct.configuration*)* @fill_configuration_defaults)
  %6 = load %struct.configuration*, %struct.configuration** %2, align 8
  %7 = icmp ne %struct.configuration* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.configuration*, %struct.configuration** %2, align 8
  %11 = getelementptr inbounds %struct.configuration, %struct.configuration* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.configuration*, %struct.configuration** %2, align 8
  %16 = getelementptr inbounds %struct.configuration, %struct.configuration* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free(i32* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @DEFAULT_SOCKET_PATH, align 4
  %21 = call i64 @strlen(i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  %24 = call i8* @calloc(i32 1, i64 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.configuration*, %struct.configuration** %2, align 8
  %27 = getelementptr inbounds %struct.configuration, %struct.configuration* %26, i32 0, i32 7
  store i32* %25, i32** %27, align 8
  %28 = load %struct.configuration*, %struct.configuration** %2, align 8
  %29 = getelementptr inbounds %struct.configuration, %struct.configuration* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.configuration*, %struct.configuration** %2, align 8
  %35 = getelementptr inbounds %struct.configuration, %struct.configuration* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @DEFAULT_SOCKET_PATH, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @memcpy(i32* %36, i32 %37, i64 %38)
  %40 = load i32, i32* @DEFAULT_PIDFILE_PATH, align 4
  %41 = call i64 @strlen(i32 %40)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 1
  %44 = call i8* @calloc(i32 1, i64 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.configuration*, %struct.configuration** %2, align 8
  %47 = getelementptr inbounds %struct.configuration, %struct.configuration* %46, i32 0, i32 6
  store i32* %45, i32** %47, align 8
  %48 = load %struct.configuration*, %struct.configuration** %2, align 8
  %49 = getelementptr inbounds %struct.configuration, %struct.configuration* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.configuration*, %struct.configuration** %2, align 8
  %55 = getelementptr inbounds %struct.configuration, %struct.configuration* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @DEFAULT_PIDFILE_PATH, align 4
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @memcpy(i32* %56, i32 %57, i64 %58)
  %60 = load i32, i32* @S_IFSOCK, align 4
  %61 = load i32, i32* @S_IRUSR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @S_IWUSR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @S_IRGRP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @S_IWGRP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @S_IROTH, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @S_IWOTH, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.configuration*, %struct.configuration** %2, align 8
  %74 = getelementptr inbounds %struct.configuration, %struct.configuration* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.configuration*, %struct.configuration** %2, align 8
  %76 = getelementptr inbounds %struct.configuration, %struct.configuration* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load i32, i32* @DEFAULT_QUERY_TIMEOUT, align 4
  %78 = load %struct.configuration*, %struct.configuration** %2, align 8
  %79 = getelementptr inbounds %struct.configuration, %struct.configuration* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @DEFAULT_THREADS_NUM, align 4
  %81 = load %struct.configuration*, %struct.configuration** %2, align 8
  %82 = getelementptr inbounds %struct.configuration, %struct.configuration* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  store i64 0, i64* %4, align 8
  br label %83

83:                                               ; preds = %97, %19
  %84 = load i64, i64* %4, align 8
  %85 = load %struct.configuration*, %struct.configuration** %2, align 8
  %86 = getelementptr inbounds %struct.configuration, %struct.configuration* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %83
  %90 = load %struct.configuration*, %struct.configuration** %2, align 8
  %91 = getelementptr inbounds %struct.configuration, %struct.configuration* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @destroy_configuration_entry(i32 %95)
  br label %97

97:                                               ; preds = %89
  %98 = load i64, i64* %4, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %83

100:                                              ; preds = %83
  %101 = load %struct.configuration*, %struct.configuration** %2, align 8
  %102 = getelementptr inbounds %struct.configuration, %struct.configuration* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = call i32 @TRACE_OUT(void (%struct.configuration*)* @fill_configuration_defaults)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.configuration*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @destroy_configuration_entry(i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.configuration*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

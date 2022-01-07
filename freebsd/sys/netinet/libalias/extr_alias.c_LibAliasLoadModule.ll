; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasLoadModule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_LibAliasLoadModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dll = type { i8*, i32 }
%struct.proto_handler = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RTLD_LAZY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"alias_mod\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DLL_LEN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"dll conflict\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"handlers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LibAliasLoadModule(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dll*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proto_handler*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @RTLD_LAZY, align 4
  %11 = call i8* @dlopen(i8* %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i8* (...) @dlerror()
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %75

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @dlsym(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %8, align 8
  %23 = call i8* (...) @dlerror()
  store i8* %23, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* (...) @dlerror()
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %19
  %31 = call %struct.dll* @malloc(i32 16)
  store %struct.dll* %31, %struct.dll** %4, align 8
  %32 = load %struct.dll*, %struct.dll** %4, align 8
  %33 = icmp eq %struct.dll* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %2, align 4
  br label %75

36:                                               ; preds = %30
  %37 = load %struct.dll*, %struct.dll** %4, align 8
  %38 = getelementptr inbounds %struct.dll, %struct.dll* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DLL_LEN, align 4
  %44 = call i32 @strncpy(i32 %39, i32 %42, i32 %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.dll*, %struct.dll** %4, align 8
  %47 = getelementptr inbounds %struct.dll, %struct.dll* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.dll*, %struct.dll** %4, align 8
  %49 = call i64 @attach_dll(%struct.dll* %48)
  %50 = load i64, i64* @EEXIST, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %36
  %53 = load %struct.dll*, %struct.dll** %4, align 8
  %54 = call i32 @free(%struct.dll* %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i64, i64* @EEXIST, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %75

59:                                               ; preds = %36
  %60 = load %struct.dll*, %struct.dll** %4, align 8
  %61 = getelementptr inbounds %struct.dll, %struct.dll* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @dlsym(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %64 = bitcast i8* %63 to %struct.proto_handler*
  store %struct.proto_handler* %64, %struct.proto_handler** %6, align 8
  %65 = call i8* (...) @dlerror()
  store i8* %65, i8** %7, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %59
  %73 = load %struct.proto_handler*, %struct.proto_handler** %6, align 8
  %74 = call i32 @LibAliasAttachHandlers(%struct.proto_handler* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %67, %52, %34, %25, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @dlerror(...) #1

declare dso_local i8* @dlsym(i8*, i8*) #1

declare dso_local %struct.dll* @malloc(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @attach_dll(%struct.dll*) #1

declare dso_local i32 @free(%struct.dll*) #1

declare dso_local i32 @LibAliasAttachHandlers(%struct.proto_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

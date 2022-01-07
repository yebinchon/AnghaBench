; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_ioc_region = type { i32, i32 }
%struct.resource = type { i32, i32, i64, i32, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/dev/proto/%s/%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@PROTO_IOC_REGION = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bs_map(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.proto_ioc_region, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

26:                                               ; preds = %2
  %27 = call i32 (...) @rid_alloc()
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.resource* @rid_lookup(i32 %32)
  store %struct.resource* %33, %struct.resource** %9, align 8
  %34 = load %struct.resource*, %struct.resource** %9, align 8
  %35 = icmp eq %struct.resource* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

37:                                               ; preds = %31
  %38 = load i32, i32* @O_RDWR, align 4
  %39 = call i32 @open(i8* %16, i32 %38)
  %40 = load %struct.resource*, %struct.resource** %9, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.resource*, %struct.resource** %9, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

47:                                               ; preds = %37
  %48 = load %struct.resource*, %struct.resource** %9, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 4
  %50 = load %struct.resource*, %struct.resource** %9, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PROTO_IOC_REGION, align 4
  %54 = call i32 @ioctl(i32 %52, i32 %53, %struct.proto_ioc_region* %8)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.resource*, %struct.resource** %9, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @close(i32 %59)
  %61 = load %struct.resource*, %struct.resource** %9, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.proto_ioc_region, %struct.proto_ioc_region* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.resource*, %struct.resource** %9, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.proto_ioc_region, %struct.proto_ioc_region* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.resource*, %struct.resource** %9, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.resource*, %struct.resource** %9, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.resource*, %struct.resource** %9, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PROT_READ, align 4
  %78 = load i32, i32* @PROT_WRITE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @MAP_NOCORE, align 4
  %81 = load i32, i32* @MAP_SHARED, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.resource*, %struct.resource** %9, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.resource*, %struct.resource** %9, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @mmap(i32* null, i32 %76, i32 %79, i32 %82, i32 %85, i64 %88)
  %90 = load %struct.resource*, %struct.resource** %9, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %63, %56, %46, %36, %30, %24
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @rid_alloc(...) #2

declare dso_local %struct.resource* @rid_lookup(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.proto_ioc_region*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @mmap(i32*, i32, i32, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

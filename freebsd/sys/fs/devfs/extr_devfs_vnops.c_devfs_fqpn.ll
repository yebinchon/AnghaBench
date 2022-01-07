; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_fqpn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_fqpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { %struct.devfs_dirent*, i32 }
%struct.devfs_dirent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.componentname = type { i32, i32 }

@SA_LOCKED = common dso_local global i32 0, align 4
@SPECNAMELEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @devfs_fqpn(i8* %0, %struct.devfs_mount* %1, %struct.devfs_dirent* %2, %struct.componentname* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.devfs_mount*, align 8
  %8 = alloca %struct.devfs_dirent*, align 8
  %9 = alloca %struct.componentname*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.devfs_dirent*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.devfs_mount* %1, %struct.devfs_mount** %7, align 8
  store %struct.devfs_dirent* %2, %struct.devfs_dirent** %8, align 8
  store %struct.componentname* %3, %struct.componentname** %9, align 8
  %12 = load %struct.devfs_mount*, %struct.devfs_mount** %7, align 8
  %13 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %12, i32 0, i32 1
  %14 = load i32, i32* @SA_LOCKED, align 4
  %15 = call i32 @sx_assert(i32* %13, i32 %14)
  %16 = load i32, i32* @SPECNAMELEN, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load %struct.componentname*, %struct.componentname** %9, align 8
  %22 = icmp ne %struct.componentname* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.componentname*, %struct.componentname** %9, align 8
  %25 = getelementptr inbounds %struct.componentname, %struct.componentname* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %23, %4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %112

33:                                               ; preds = %29
  %34 = load %struct.componentname*, %struct.componentname** %9, align 8
  %35 = icmp ne %struct.componentname* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.componentname*, %struct.componentname** %9, align 8
  %38 = getelementptr inbounds %struct.componentname, %struct.componentname* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load %struct.componentname*, %struct.componentname** %9, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bcopy(i32 %39, i8* %43, i32 %46)
  br label %48

48:                                               ; preds = %36, %33
  %49 = load %struct.devfs_dirent*, %struct.devfs_dirent** %8, align 8
  store %struct.devfs_dirent* %49, %struct.devfs_dirent** %11, align 8
  br label %50

50:                                               ; preds = %106, %48
  %51 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %52 = load %struct.devfs_mount*, %struct.devfs_mount** %7, align 8
  %53 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %52, i32 0, i32 0
  %54 = load %struct.devfs_dirent*, %struct.devfs_dirent** %53, align 8
  %55 = icmp ne %struct.devfs_dirent* %51, %54
  br i1 %55, label %56, label %107

56:                                               ; preds = %50
  %57 = load %struct.componentname*, %struct.componentname** %9, align 8
  %58 = icmp ne %struct.componentname* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @SPECNAMELEN, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i8* null, i8** %5, align 8
  br label %112

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 47, i8* %73, align 1
  br label %74

74:                                               ; preds = %69, %59
  %75 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %76 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i8* null, i8** %5, align 8
  br label %112

85:                                               ; preds = %74
  %86 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %87 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %96 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bcopy(i32 %90, i8* %94, i32 %99)
  %101 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %102 = call %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent* %101)
  store %struct.devfs_dirent* %102, %struct.devfs_dirent** %11, align 8
  %103 = load %struct.devfs_dirent*, %struct.devfs_dirent** %11, align 8
  %104 = icmp eq %struct.devfs_dirent* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %85
  store i8* null, i8** %5, align 8
  br label %112

106:                                              ; preds = %85
  br label %50

107:                                              ; preds = %50
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8* %111, i8** %5, align 8
  br label %112

112:                                              ; preds = %107, %105, %84, %68, %32
  %113 = load i8*, i8** %5, align 8
  ret i8* %113
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@M_MOUNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mntarg* @mount_arg(%struct.mntarg* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca %struct.mntarg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mntarg* %0, %struct.mntarg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %11 = icmp eq %struct.mntarg* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load i32, i32* @M_MOUNT, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.mntarg* @malloc(i32 32, i32 %13, i32 %16)
  store %struct.mntarg* %17, %struct.mntarg** %6, align 8
  %18 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %19 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %18, i32 0, i32 3
  %20 = call i32 @SLIST_INIT(i32* %19)
  br label %21

21:                                               ; preds = %12, %4
  %22 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %23 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  store %struct.mntarg* %27, %struct.mntarg** %5, align 8
  br label %118

28:                                               ; preds = %21
  %29 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %30 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %33 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = mul i64 16, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_MOUNT, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call %struct.TYPE_3__* @realloc(%struct.TYPE_3__* %31, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %43 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %42, i32 0, i32 1
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %48 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %51 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %46, i8** %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i8* @strlen(i8* %56)
  %58 = getelementptr i8, i8* %57, i64 1
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %61 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %64 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %59, i32* %68, align 8
  %69 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %70 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %77 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %80 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i8* %75, i8** %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %28
  %88 = load i8*, i8** %8, align 8
  %89 = call i8* @strlen(i8* %88)
  %90 = getelementptr i8, i8* %89, i64 1
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %93 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %96 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %91, i32* %100, align 8
  br label %112

101:                                              ; preds = %28
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %104 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %107 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 %102, i32* %111, align 8
  br label %112

112:                                              ; preds = %101, %87
  %113 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  %114 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.mntarg*, %struct.mntarg** %6, align 8
  store %struct.mntarg* %117, %struct.mntarg** %5, align 8
  br label %118

118:                                              ; preds = %112, %26
  %119 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  ret %struct.mntarg* %119
}

declare dso_local %struct.mntarg* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local %struct.TYPE_3__* @realloc(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i8* @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

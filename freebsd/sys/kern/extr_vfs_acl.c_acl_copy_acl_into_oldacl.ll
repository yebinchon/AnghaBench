; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_acl_copy_acl_into_oldacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_acl_copy_acl_into_oldacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.oldacl = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@OLDACL_MAX_ENTRIES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_copy_acl_into_oldacl(%struct.acl* %0, %struct.oldacl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acl*, align 8
  %5 = alloca %struct.oldacl*, align 8
  %6 = alloca i32, align 4
  store %struct.acl* %0, %struct.acl** %4, align 8
  store %struct.oldacl* %1, %struct.oldacl** %5, align 8
  %7 = load %struct.acl*, %struct.acl** %4, align 8
  %8 = getelementptr inbounds %struct.acl, %struct.acl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OLDACL_MAX_ENTRIES, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.oldacl*, %struct.oldacl** %5, align 8
  %16 = call i32 @bzero(%struct.oldacl* %15, i32 16)
  %17 = load %struct.acl*, %struct.acl** %4, align 8
  %18 = getelementptr inbounds %struct.acl, %struct.acl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.oldacl*, %struct.oldacl** %5, align 8
  %22 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %75, %14
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.oldacl*, %struct.oldacl** %5, align 8
  %26 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %23
  %30 = load %struct.acl*, %struct.acl** %4, align 8
  %31 = getelementptr inbounds %struct.acl, %struct.acl* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.oldacl*, %struct.oldacl** %5, align 8
  %39 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %37, i32* %44, align 4
  %45 = load %struct.acl*, %struct.acl** %4, align 8
  %46 = getelementptr inbounds %struct.acl, %struct.acl* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.oldacl*, %struct.oldacl** %5, align 8
  %54 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 4
  %60 = load %struct.acl*, %struct.acl** %4, align 8
  %61 = getelementptr inbounds %struct.acl, %struct.acl* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.oldacl*, %struct.oldacl** %5, align 8
  %69 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %29
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %23

78:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %12
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @bzero(%struct.oldacl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_acl_copy_oldacl_into_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_acl.c_acl_copy_oldacl_into_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oldacl = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.acl = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@OLDACL_MAX_ENTRIES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acl_copy_oldacl_into_acl(%struct.oldacl* %0, %struct.acl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oldacl*, align 8
  %5 = alloca %struct.acl*, align 8
  %6 = alloca i32, align 4
  store %struct.oldacl* %0, %struct.oldacl** %4, align 8
  store %struct.acl* %1, %struct.acl** %5, align 8
  %7 = load %struct.oldacl*, %struct.oldacl** %4, align 8
  %8 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.oldacl*, %struct.oldacl** %4, align 8
  %13 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OLDACL_MAX_ENTRIES, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %87

19:                                               ; preds = %11
  %20 = load %struct.acl*, %struct.acl** %5, align 8
  %21 = call i32 @bzero(%struct.acl* %20, i32 24)
  %22 = load %struct.oldacl*, %struct.oldacl** %4, align 8
  %23 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.acl*, %struct.acl** %5, align 8
  %26 = getelementptr inbounds %struct.acl, %struct.acl* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %28 = load %struct.acl*, %struct.acl** %5, align 8
  %29 = getelementptr inbounds %struct.acl, %struct.acl* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %83, %19
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.acl*, %struct.acl** %5, align 8
  %34 = getelementptr inbounds %struct.acl, %struct.acl* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %30
  %38 = load %struct.oldacl*, %struct.oldacl** %4, align 8
  %39 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.acl*, %struct.acl** %5, align 8
  %47 = getelementptr inbounds %struct.acl, %struct.acl* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32 %45, i32* %52, align 4
  %53 = load %struct.oldacl*, %struct.oldacl** %4, align 8
  %54 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.acl*, %struct.acl** %5, align 8
  %62 = getelementptr inbounds %struct.acl, %struct.acl* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %60, i32* %67, align 4
  %68 = load %struct.oldacl*, %struct.oldacl** %4, align 8
  %69 = getelementptr inbounds %struct.oldacl, %struct.oldacl* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.acl*, %struct.acl** %5, align 8
  %77 = getelementptr inbounds %struct.acl, %struct.acl* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 4
  br label %83

83:                                               ; preds = %37
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %30

86:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @bzero(%struct.acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

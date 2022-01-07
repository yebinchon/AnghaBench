; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_setpublicfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_setpublicfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, %struct.mount*, %struct.TYPE_6__ }
%struct.mount = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.netexport = type { i32 }
%struct.export_args = type { i32* }
%struct.vnode = type { i32 }

@nfs_pub = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@M_TEMP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@MAXNAMLEN = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_setpublicfs(%struct.mount* %0, %struct.netexport* %1, %struct.export_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.netexport*, align 8
  %7 = alloca %struct.export_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i8*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.netexport* %1, %struct.netexport** %6, align 8
  store %struct.export_args* %2, %struct.export_args** %7, align 8
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = icmp eq %struct.mount* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 0), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 0), align 8
  %17 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  %21 = load i32, i32* @M_TEMP, align 4
  %22 = call i32 @free(i8* %20, i32 %21)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  br label %23

23:                                               ; preds = %19, %16
  br label %24

24:                                               ; preds = %23, %13
  store i32 0, i32* %4, align 4
  br label %106

25:                                               ; preds = %3
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 0), align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.mount*, %struct.mount** %5, align 8
  %30 = load %struct.mount*, %struct.mount** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 2), align 8
  %31 = icmp ne %struct.mount* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @EBUSY, align 4
  store i32 %33, i32* %4, align 4
  br label %106

34:                                               ; preds = %28, %25
  %35 = call i32 @bzero(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 3), i32 8)
  %36 = load %struct.mount*, %struct.mount** %5, align 8
  %37 = getelementptr inbounds %struct.mount, %struct.mount* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 3, i32 1), align 4
  %40 = load %struct.mount*, %struct.mount** %5, align 8
  %41 = load i32, i32* @LK_EXCLUSIVE, align 4
  %42 = call i32 @VFS_ROOT(%struct.mount* %40, i32 %41, %struct.vnode** %9)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %106

46:                                               ; preds = %34
  %47 = load %struct.vnode*, %struct.vnode** %9, align 8
  %48 = call i32 @VOP_VPTOFH(%struct.vnode* %47, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 3, i32 0))
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %106

52:                                               ; preds = %46
  %53 = load %struct.vnode*, %struct.vnode** %9, align 8
  %54 = call i32 @vput(%struct.vnode* %53)
  %55 = load %struct.export_args*, %struct.export_args** %7, align 8
  %56 = getelementptr inbounds %struct.export_args, %struct.export_args* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %104

59:                                               ; preds = %52
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i64, i64* @MAXNAMLEN, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i32, i32* @M_TEMP, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call i8* @malloc(i64 %64, i32 %65, i32 %66)
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  br label %68

68:                                               ; preds = %62, %59
  %69 = load %struct.export_args*, %struct.export_args** %7, align 8
  %70 = getelementptr inbounds %struct.export_args, %struct.export_args* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  %73 = load i64, i64* @MAXNAMLEN, align 8
  %74 = call i32 @copyinstr(i32* %71, i8* %72, i64 %73, i64* null)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %95, label %77

77:                                               ; preds = %68
  %78 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  store i8* %78, i8** %10, align 8
  br label %79

79:                                               ; preds = %91, %77
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %8, align 4
  br label %94

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  br label %79

94:                                               ; preds = %88, %79
  br label %95

95:                                               ; preds = %94, %68
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  %100 = load i32, i32* @M_TEMP, align 4
  %101 = call i32 @free(i8* %99, i32 %100)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 1), align 8
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %4, align 4
  br label %106

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %52
  %105 = load %struct.mount*, %struct.mount** %5, align 8
  store %struct.mount* %105, %struct.mount** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nfs_pub, i32 0, i32 0), align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %98, %50, %44, %32, %24
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @VFS_ROOT(%struct.mount*, i32, %struct.vnode**) #1

declare dso_local i32 @VOP_VPTOFH(%struct.vnode*, i32*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyinstr(i32*, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_pathconf_args = type { i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@EXT2F_ROCOMPAT_DIR_NLINK = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@EXT4_LINK_MAX = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@MNT_ACLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_pathconf_args*)* @ext2_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_pathconf(%struct.vop_pathconf_args* %0) #0 {
  %2 = alloca %struct.vop_pathconf_args*, align 8
  %3 = alloca i32, align 4
  store %struct.vop_pathconf_args* %0, %struct.vop_pathconf_args** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %5 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %139 [
    i32 139, label %7
    i32 137, label %28
    i32 135, label %33
    i32 141, label %57
    i32 136, label %61
    i32 138, label %65
    i32 134, label %77
    i32 128, label %81
    i32 142, label %85
    i32 140, label %97
    i32 133, label %101
    i32 132, label %113
    i32 131, label %117
    i32 130, label %129
    i32 129, label %134
  ]

7:                                                ; preds = %1
  %8 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call %struct.TYPE_7__* @VTOI(%struct.TYPE_8__* %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @EXT2F_ROCOMPAT_DIR_NLINK, align 4
  %15 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = load i32, i32* @INT_MAX, align 4
  %19 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %20 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32 %18, i32* %21, align 4
  br label %27

22:                                               ; preds = %7
  %23 = load i32, i32* @EXT4_LINK_MAX, align 4
  %24 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %25 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %17
  br label %142

28:                                               ; preds = %1
  %29 = load i32, i32* @NAME_MAX, align 4
  %30 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %31 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32 %29, i32* %32, align 4
  br label %142

33:                                               ; preds = %1
  %34 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %35 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VDIR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %43 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VFIFO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41, %33
  %50 = load i32, i32* @PIPE_BUF, align 4
  %51 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %52 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32 %50, i32* %53, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %49
  br label %142

57:                                               ; preds = %1
  %58 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %59 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32 1, i32* %60, align 4
  br label %142

61:                                               ; preds = %1
  %62 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %63 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32 1, i32* %64, align 4
  br label %142

65:                                               ; preds = %1
  %66 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %67 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %75 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32 %73, i32* %76, align 4
  br label %142

77:                                               ; preds = %1
  %78 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %79 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  store i32 0, i32* %80, align 4
  br label %142

81:                                               ; preds = %1
  %82 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %83 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  store i32 0, i32* %84, align 4
  br label %142

85:                                               ; preds = %1
  %86 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %87 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %95 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  store i32 %93, i32* %96, align 4
  br label %142

97:                                               ; preds = %1
  %98 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %99 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  store i32 64, i32* %100, align 4
  br label %142

101:                                              ; preds = %1
  %102 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %103 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %102, i32 0, i32 2
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %111 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  store i32 %109, i32* %112, align 4
  br label %142

113:                                              ; preds = %1
  %114 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %115 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  store i32 -1, i32* %116, align 4
  br label %142

117:                                              ; preds = %1
  %118 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %119 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %127 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  store i32 %125, i32* %128, align 4
  br label %142

129:                                              ; preds = %1
  %130 = load i32, i32* @PAGE_SIZE, align 4
  %131 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %132 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  store i32 %130, i32* %133, align 4
  br label %142

134:                                              ; preds = %1
  %135 = load i32, i32* @MAXPATHLEN, align 4
  %136 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %137 = getelementptr inbounds %struct.vop_pathconf_args, %struct.vop_pathconf_args* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  store i32 %135, i32* %138, align 4
  br label %142

139:                                              ; preds = %1
  %140 = load %struct.vop_pathconf_args*, %struct.vop_pathconf_args** %2, align 8
  %141 = call i32 @vop_stdpathconf(%struct.vop_pathconf_args* %140)
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %134, %129, %117, %113, %101, %97, %85, %81, %77, %65, %61, %57, %56, %28, %27
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(i32, i32) #1

declare dso_local %struct.TYPE_7__* @VTOI(%struct.TYPE_8__*) #1

declare dso_local i32 @vop_stdpathconf(%struct.vop_pathconf_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vop_rename_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vop_rename_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rename_args = type { %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@NOTE_WRITE = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@NOTE_LINK = common dso_local global i64 0, align 8
@NOTE_EXTEND = common dso_local global i64 0, align 8
@NOTE_RENAME = common dso_local global i64 0, align 8
@NOTE_DELETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vop_rename_post(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vop_rename_args*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.vop_rename_args*
  store %struct.vop_rename_args* %8, %struct.vop_rename_args** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %117, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @NOTE_WRITE, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %14 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %17 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp eq %struct.TYPE_3__* %15, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %11
  %21 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %22 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %27 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VDIR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i64, i64* @NOTE_LINK, align 8
  %35 = load i64, i64* %6, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %33, %25, %20
  %38 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %39 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %38, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @VFS_KNOTE_UNLOCKED(%struct.TYPE_3__* %40, i64 %41)
  %43 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %44 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @VFS_KNOTE_UNLOCKED(%struct.TYPE_3__* %45, i64 %46)
  br label %100

48:                                               ; preds = %11
  %49 = load i64, i64* @NOTE_EXTEND, align 8
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %53 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @VDIR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load i64, i64* @NOTE_LINK, align 8
  %61 = load i64, i64* %6, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %65 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @VFS_KNOTE_UNLOCKED(%struct.TYPE_3__* %66, i64 %67)
  %69 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %70 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VDIR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %63
  %77 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %78 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %83 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VDIR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i64, i64* @NOTE_LINK, align 8
  %91 = xor i64 %90, -1
  %92 = load i64, i64* %6, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %89, %81, %76, %63
  %95 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %96 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @VFS_KNOTE_UNLOCKED(%struct.TYPE_3__* %97, i64 %98)
  br label %100

100:                                              ; preds = %94, %37
  %101 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %102 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i64, i64* @NOTE_RENAME, align 8
  %105 = call i32 @VFS_KNOTE_UNLOCKED(%struct.TYPE_3__* %103, i64 %104)
  %106 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %107 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = icmp ne %struct.TYPE_3__* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %112 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = load i64, i64* @NOTE_DELETE, align 8
  %115 = call i32 @VFS_KNOTE_UNLOCKED(%struct.TYPE_3__* %113, i64 %114)
  br label %116

116:                                              ; preds = %110, %100
  br label %117

117:                                              ; preds = %116, %2
  %118 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %119 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %118, i32 0, i32 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %122 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %121, i32 0, i32 3
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = icmp ne %struct.TYPE_3__* %120, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %117
  %126 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %127 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %126, i32 0, i32 3
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = call i32 @vdrop(%struct.TYPE_3__* %128)
  br label %130

130:                                              ; preds = %125, %117
  %131 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %132 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %135 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = icmp ne %struct.TYPE_3__* %133, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %140 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = call i32 @vdrop(%struct.TYPE_3__* %141)
  br label %143

143:                                              ; preds = %138, %130
  %144 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %145 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %144, i32 0, i32 1
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = call i32 @vdrop(%struct.TYPE_3__* %146)
  %148 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %149 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = icmp ne %struct.TYPE_3__* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load %struct.vop_rename_args*, %struct.vop_rename_args** %5, align 8
  %154 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = call i32 @vdrop(%struct.TYPE_3__* %155)
  br label %157

157:                                              ; preds = %152, %143
  ret void
}

declare dso_local i32 @VFS_KNOTE_UNLOCKED(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @vdrop(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

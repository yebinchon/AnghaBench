; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_deupdat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_deupdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32, i64 }
%struct.direntry = type { i32 }
%struct.timespec = type { i32 }
%struct.buf = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MNT_RDONLY = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@DE_CREATE = common dso_local global i32 0, align 4
@DE_ACCESS = common dso_local global i32 0, align 4
@DE_MODIFIED = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B_DELWRI = common dso_local global i32 0, align 4
@MNT_NOCLUSTERW = common dso_local global i32 0, align 4
@B_CLUSTEROK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deupdat(%struct.denode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.denode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.direntry, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.direntry*, align 8
  %10 = alloca i32, align 4
  store %struct.denode* %0, %struct.denode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.denode*, %struct.denode** %4, align 8
  %12 = call %struct.TYPE_4__* @DETOV(%struct.denode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MNT_RDONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @DE_UPDATE, align 4
  %22 = load i32, i32* @DE_CREATE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DE_ACCESS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @DE_MODIFIED, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.denode*, %struct.denode** %4, align 8
  %30 = getelementptr inbounds %struct.denode, %struct.denode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  store i32 0, i32* %3, align 4
  br label %137

33:                                               ; preds = %2
  %34 = call i32 @vfs_timestamp(%struct.timespec* %7)
  %35 = load %struct.denode*, %struct.denode** %4, align 8
  %36 = call i32 @DETIMES(%struct.denode* %35, %struct.timespec* %7, %struct.timespec* %7, %struct.timespec* %7)
  %37 = load %struct.denode*, %struct.denode** %4, align 8
  %38 = getelementptr inbounds %struct.denode, %struct.denode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DE_MODIFIED, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %137

47:                                               ; preds = %43, %33
  %48 = load i32, i32* @DE_MODIFIED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.denode*, %struct.denode** %4, align 8
  %51 = getelementptr inbounds %struct.denode, %struct.denode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.denode*, %struct.denode** %4, align 8
  %55 = call %struct.TYPE_4__* @DETOV(%struct.denode* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VV_ROOT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %3, align 4
  br label %137

63:                                               ; preds = %47
  %64 = load %struct.denode*, %struct.denode** %4, align 8
  %65 = getelementptr inbounds %struct.denode, %struct.denode* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %137

69:                                               ; preds = %63
  %70 = load %struct.denode*, %struct.denode** %4, align 8
  %71 = call i32 @readde(%struct.denode* %70, %struct.buf** %8, %struct.direntry** %9)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %137

76:                                               ; preds = %69
  %77 = load %struct.denode*, %struct.denode** %4, align 8
  %78 = call i32 @DE_EXTERNALIZE(%struct.direntry* %6, %struct.denode* %77)
  %79 = load %struct.direntry*, %struct.direntry** %9, align 8
  %80 = call i64 @bcmp(%struct.direntry* %79, %struct.direntry* %6, i32 4)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load %struct.buf*, %struct.buf** %8, align 8
  %87 = getelementptr inbounds %struct.buf, %struct.buf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @B_DELWRI, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85, %82
  %93 = load %struct.buf*, %struct.buf** %8, align 8
  %94 = call i32 @brelse(%struct.buf* %93)
  store i32 0, i32* %3, align 4
  br label %137

95:                                               ; preds = %85
  br label %100

96:                                               ; preds = %76
  %97 = load %struct.direntry*, %struct.direntry** %9, align 8
  %98 = bitcast %struct.direntry* %97 to i8*
  %99 = bitcast %struct.direntry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  br label %100

100:                                              ; preds = %96, %95
  %101 = load %struct.denode*, %struct.denode** %4, align 8
  %102 = call %struct.TYPE_4__* @DETOV(%struct.denode* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MNT_NOCLUSTERW, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load i32, i32* @B_CLUSTEROK, align 4
  %112 = load %struct.buf*, %struct.buf** %8, align 8
  %113 = getelementptr inbounds %struct.buf, %struct.buf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %100
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.buf*, %struct.buf** %8, align 8
  %121 = call i32 @bwrite(%struct.buf* %120)
  store i32 %121, i32* %10, align 4
  br label %135

122:                                              ; preds = %116
  %123 = call i64 (...) @vm_page_count_severe()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call i64 (...) @buf_dirty_count_severe()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %122
  %129 = load %struct.buf*, %struct.buf** %8, align 8
  %130 = call i32 @bawrite(%struct.buf* %129)
  br label %134

131:                                              ; preds = %125
  %132 = load %struct.buf*, %struct.buf** %8, align 8
  %133 = call i32 @bdwrite(%struct.buf* %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %92, %74, %68, %61, %46, %20
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_4__* @DETOV(%struct.denode*) #1

declare dso_local i32 @vfs_timestamp(%struct.timespec*) #1

declare dso_local i32 @DETIMES(%struct.denode*, %struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @readde(%struct.denode*, %struct.buf**, %struct.direntry**) #1

declare dso_local i32 @DE_EXTERNALIZE(%struct.direntry*, %struct.denode*) #1

declare dso_local i64 @bcmp(%struct.direntry*, %struct.direntry*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i64 @vm_page_count_severe(...) #1

declare dso_local i64 @buf_dirty_count_severe(...) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

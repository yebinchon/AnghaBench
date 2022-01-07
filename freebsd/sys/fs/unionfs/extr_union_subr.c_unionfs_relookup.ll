; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_relookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/unionfs/extr_union_subr.c_unionfs_relookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i8*, i32, i32, i8*, i32, %struct.thread*, i64 }
%struct.thread = type { i32 }

@namei_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@HASBUF = common dso_local global i32 0, align 4
@SAVENAME = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@DELETE = common dso_local global i64 0, align 8
@DOWHITEOUT = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4
@RENAME = common dso_local global i64 0, align 8
@CREATE = common dso_local global i64 0, align 8
@NOCACHE = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unionfs_relookup(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2, %struct.componentname* %3, %struct.thread* %4, i8* %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode**, align 8
  %11 = alloca %struct.componentname*, align 8
  %12 = alloca %struct.componentname*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store %struct.vnode** %1, %struct.vnode*** %10, align 8
  store %struct.componentname* %2, %struct.componentname** %11, align 8
  store %struct.componentname* %3, %struct.componentname** %12, align 8
  store %struct.thread* %4, %struct.thread** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %18 = load i32, i32* %15, align 4
  %19 = load %struct.componentname*, %struct.componentname** %12, align 8
  %20 = getelementptr inbounds %struct.componentname, %struct.componentname* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @namei_zone, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call i8* @uma_zalloc(i32 %21, i32 %22)
  %24 = load %struct.componentname*, %struct.componentname** %12, align 8
  %25 = getelementptr inbounds %struct.componentname, %struct.componentname* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load %struct.componentname*, %struct.componentname** %12, align 8
  %28 = getelementptr inbounds %struct.componentname, %struct.componentname* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @bcopy(i8* %26, i8* %29, i32 %30)
  %32 = load %struct.componentname*, %struct.componentname** %12, align 8
  %33 = getelementptr inbounds %struct.componentname, %struct.componentname* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i64, i64* %16, align 8
  %39 = load %struct.componentname*, %struct.componentname** %12, align 8
  %40 = getelementptr inbounds %struct.componentname, %struct.componentname* %39, i32 0, i32 7
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @LOCKPARENT, align 4
  %42 = load i32, i32* @LOCKLEAF, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @HASBUF, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SAVENAME, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @ISLASTCN, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.componentname*, %struct.componentname** %12, align 8
  %51 = getelementptr inbounds %struct.componentname, %struct.componentname* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @LK_EXCLUSIVE, align 4
  %53 = load %struct.componentname*, %struct.componentname** %12, align 8
  %54 = getelementptr inbounds %struct.componentname, %struct.componentname* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.thread*, %struct.thread** %13, align 8
  %56 = load %struct.componentname*, %struct.componentname** %12, align 8
  %57 = getelementptr inbounds %struct.componentname, %struct.componentname* %56, i32 0, i32 6
  store %struct.thread* %55, %struct.thread** %57, align 8
  %58 = load %struct.componentname*, %struct.componentname** %11, align 8
  %59 = getelementptr inbounds %struct.componentname, %struct.componentname* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.componentname*, %struct.componentname** %12, align 8
  %62 = getelementptr inbounds %struct.componentname, %struct.componentname* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.componentname*, %struct.componentname** %12, align 8
  %64 = getelementptr inbounds %struct.componentname, %struct.componentname* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.componentname*, %struct.componentname** %12, align 8
  %67 = getelementptr inbounds %struct.componentname, %struct.componentname* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* @DELETE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %8
  %72 = load %struct.componentname*, %struct.componentname** %11, align 8
  %73 = getelementptr inbounds %struct.componentname, %struct.componentname* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DOWHITEOUT, align 4
  %76 = load i32, i32* @SAVESTART, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load %struct.componentname*, %struct.componentname** %12, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %109

83:                                               ; preds = %8
  %84 = load i64, i64* @RENAME, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load %struct.componentname*, %struct.componentname** %11, align 8
  %89 = getelementptr inbounds %struct.componentname, %struct.componentname* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SAVESTART, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.componentname*, %struct.componentname** %12, align 8
  %94 = getelementptr inbounds %struct.componentname, %struct.componentname* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %108

97:                                               ; preds = %83
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* @CREATE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* @NOCACHE, align 4
  %103 = load %struct.componentname*, %struct.componentname** %12, align 8
  %104 = getelementptr inbounds %struct.componentname, %struct.componentname* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %97
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %71
  %110 = load %struct.vnode*, %struct.vnode** %9, align 8
  %111 = call i32 @vref(%struct.vnode* %110)
  %112 = load %struct.vnode*, %struct.vnode** %9, align 8
  %113 = load i32, i32* @LK_RELEASE, align 4
  %114 = call i32 @VOP_UNLOCK(%struct.vnode* %112, i32 %113)
  %115 = load %struct.vnode*, %struct.vnode** %9, align 8
  %116 = load %struct.vnode**, %struct.vnode*** %10, align 8
  %117 = load %struct.componentname*, %struct.componentname** %12, align 8
  %118 = call i32 @relookup(%struct.vnode* %115, %struct.vnode** %116, %struct.componentname* %117)
  store i32 %118, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %109
  %121 = load i32, i32* @namei_zone, align 4
  %122 = load %struct.componentname*, %struct.componentname** %12, align 8
  %123 = getelementptr inbounds %struct.componentname, %struct.componentname* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @uma_zfree(i32 %121, i8* %124)
  %126 = load i32, i32* @HASBUF, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.componentname*, %struct.componentname** %12, align 8
  %129 = getelementptr inbounds %struct.componentname, %struct.componentname* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.vnode*, %struct.vnode** %9, align 8
  %133 = load i32, i32* @LK_EXCLUSIVE, align 4
  %134 = load i32, i32* @LK_RETRY, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @vn_lock(%struct.vnode* %132, i32 %135)
  br label %140

137:                                              ; preds = %109
  %138 = load %struct.vnode*, %struct.vnode** %9, align 8
  %139 = call i32 @vrele(%struct.vnode* %138)
  br label %140

140:                                              ; preds = %137, %120
  %141 = load i32, i32* %17, align 4
  ret i32 %141
}

declare dso_local i8* @uma_zalloc(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @relookup(%struct.vnode*, %struct.vnode**, %struct.componentname*) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

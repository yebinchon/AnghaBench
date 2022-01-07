; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_bufobj_invalbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_bufobj_invalbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufobj = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@V_SAVE = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vinvalbuf: dirty bufs\00", align 1
@V_CLEANONLY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@V_VMIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bovlbx\00", align 1
@V_ALT = common dso_local global i32 0, align 4
@V_NORMAL = common dso_local global i32 0, align 4
@OBJPR_CLEANONLY = common dso_local global i32 0, align 4
@V_ALLOWCLEAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufobj_invalbuf(%struct.bufobj* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bufobj* %0, %struct.bufobj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %12 = call i32 @BO_LOCK(%struct.bufobj* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @V_SAVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %4
  %18 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @bufobj_wwait(%struct.bufobj* %18, i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %26 = call i32 @BO_UNLOCK(%struct.bufobj* %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %168

28:                                               ; preds = %17
  %29 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %30 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %36 = call i32 @BO_UNLOCK(%struct.bufobj* %35)
  %37 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %38 = load i32, i32* @MNT_WAIT, align 4
  %39 = call i32 @BO_SYNC(%struct.bufobj* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %168

43:                                               ; preds = %34
  %44 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %45 = call i32 @BO_LOCK(%struct.bufobj* %44)
  %46 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %47 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %52 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %43
  %57 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  br label %59

59:                                               ; preds = %58, %28
  br label %60

60:                                               ; preds = %59, %4
  br label %61

61:                                               ; preds = %96, %60
  %62 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %63 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %62, i32 0, i32 2
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @flushbuflist(%struct.TYPE_2__* %63, i32 %64, %struct.bufobj* %65, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @V_CLEANONLY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %78 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %77, i32 0, i32 1
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @flushbuflist(%struct.TYPE_2__* %78, i32 %79, %struct.bufobj* %80, i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %76, %71, %61
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @EAGAIN, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %93 = call i32 @BO_UNLOCK(%struct.bufobj* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %168

95:                                               ; preds = %87, %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %61, label %99

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %122, %99
  %101 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %102 = call i32 @bufobj_wwait(%struct.bufobj* %101, i32 0, i32 0)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @V_VMIO, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %109 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %114 = call i32 @BO_UNLOCK(%struct.bufobj* %113)
  %115 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %116 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @vm_object_pip_wait_unlocked(i32* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %120 = call i32 @BO_LOCK(%struct.bufobj* %119)
  br label %121

121:                                              ; preds = %112, %107, %100
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %124 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %100, label %127

127:                                              ; preds = %122
  %128 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %129 = call i32 @BO_UNLOCK(%struct.bufobj* %128)
  %130 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %131 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %167

134:                                              ; preds = %127
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @V_ALT, align 4
  %137 = load i32, i32* @V_NORMAL, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @V_CLEANONLY, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @V_VMIO, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %135, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %134
  %146 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %147 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @VM_OBJECT_WLOCK(i32* %148)
  %150 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %151 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @V_SAVE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load i32, i32* @OBJPR_CLEANONLY, align 4
  br label %160

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i32 [ %158, %157 ], [ 0, %159 ]
  %162 = call i32 @vm_object_page_remove(i32* %152, i32 0, i32 0, i32 %161)
  %163 = load %struct.bufobj*, %struct.bufobj** %6, align 8
  %164 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @VM_OBJECT_WUNLOCK(i32* %165)
  br label %167

167:                                              ; preds = %160, %134, %127
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %91, %41, %24
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @bufobj_wwait(%struct.bufobj*, i32, i32) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i32 @BO_SYNC(%struct.bufobj*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @flushbuflist(%struct.TYPE_2__*, i32, %struct.bufobj*, i32, i32) #1

declare dso_local i32 @vm_object_pip_wait_unlocked(i32*, i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_page_remove(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

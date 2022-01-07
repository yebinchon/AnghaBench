; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_getnewbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_getnewbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i32 }
%struct.buf = type { i32 }
%struct.vnode = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GB_UNMAPPED = common dso_local global i32 0, align 4
@GB_KVAALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"GB_KVAALLOC only makes sense with GB_UNMAPPED\00", align 1
@unmapped_buf_allowed = common dso_local global i32 0, align 4
@VV_MD = common dso_local global i32 0, align 4
@VV_SYSTEM = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@bdomain = common dso_local global %struct.bufdomain* null, align 8
@getnewbufcalls = common dso_local global i32 0, align 4
@getnewbufrestarts = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf* (%struct.vnode*, i32, i32, i32, i32)* @getnewbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf* @getnewbuf(%struct.vnode* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.buf*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bufdomain*, align 8
  %13 = alloca %struct.buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.buf* null, %struct.buf** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @GB_UNMAPPED, align 4
  %18 = load i32, i32* @GB_KVAALLOC, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @GB_KVAALLOC, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @unmapped_buf_allowed, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @GB_UNMAPPED, align 4
  %29 = load i32, i32* @GB_KVAALLOC, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %27, %5
  %35 = load %struct.vnode*, %struct.vnode** %7, align 8
  %36 = icmp eq %struct.vnode* %35, null
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load %struct.vnode*, %struct.vnode** %7, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VV_MD, align 4
  %42 = load i32, i32* @VV_SYSTEM, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.vnode*, %struct.vnode** %7, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VCHR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %37, %34
  store i32 1, i32* %14, align 4
  br label %54

53:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.vnode*, %struct.vnode** %7, align 8
  %56 = icmp eq %struct.vnode* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.bufdomain*, %struct.bufdomain** @bdomain, align 8
  %59 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %58, i64 0
  store %struct.bufdomain* %59, %struct.bufdomain** %12, align 8
  br label %67

60:                                               ; preds = %54
  %61 = load %struct.bufdomain*, %struct.bufdomain** @bdomain, align 8
  %62 = load %struct.vnode*, %struct.vnode** %7, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %61, i64 %65
  store %struct.bufdomain* %66, %struct.bufdomain** %12, align 8
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i32, i32* @getnewbufcalls, align 4
  %69 = call i32 @counter_u64_add(i32 %68, i32 1)
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %98, %67
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.bufdomain*, %struct.bufdomain** %12, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @bufspace_reserve(%struct.bufdomain* %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @getnewbufrestarts, align 4
  %81 = call i32 @counter_u64_add(i32 %80, i32 1)
  br label %98

82:                                               ; preds = %73, %70
  store i32 1, i32* %15, align 4
  %83 = load %struct.bufdomain*, %struct.bufdomain** %12, align 8
  %84 = call %struct.buf* @buf_alloc(%struct.bufdomain* %83)
  store %struct.buf* %84, %struct.buf** %13, align 8
  %85 = icmp eq %struct.buf* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @getnewbufrestarts, align 4
  %88 = call i32 @counter_u64_add(i32 %87, i32 1)
  br label %98

89:                                               ; preds = %82
  %90 = load %struct.buf*, %struct.buf** %13, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @getnewbuf_kva(%struct.buf* %90, i32 %91, i32 %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load %struct.buf*, %struct.buf** %13, align 8
  store %struct.buf* %96, %struct.buf** %6, align 8
  br label %127

97:                                               ; preds = %89
  br label %102

98:                                               ; preds = %86, %79
  %99 = load %struct.bufdomain*, %struct.bufdomain** %12, align 8
  %100 = call i64 @buf_recycle(%struct.bufdomain* %99, i32 0)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %70, label %102

102:                                              ; preds = %98, %97
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.bufdomain*, %struct.bufdomain** %12, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @bufspace_release(%struct.bufdomain* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.buf*, %struct.buf** %13, align 8
  %111 = icmp ne %struct.buf* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* @B_INVAL, align 4
  %114 = load %struct.buf*, %struct.buf** %13, align 8
  %115 = getelementptr inbounds %struct.buf, %struct.buf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.buf*, %struct.buf** %13, align 8
  %119 = call i32 @brelse(%struct.buf* %118)
  br label %120

120:                                              ; preds = %112, %109
  %121 = load %struct.bufdomain*, %struct.bufdomain** %12, align 8
  %122 = load %struct.vnode*, %struct.vnode** %7, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @bufspace_wait(%struct.bufdomain* %121, %struct.vnode* %122, i32 %123, i32 %124, i32 %125)
  store %struct.buf* null, %struct.buf** %6, align 8
  br label %127

127:                                              ; preds = %120, %95
  %128 = load %struct.buf*, %struct.buf** %6, align 8
  ret %struct.buf* %128
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i64 @bufspace_reserve(%struct.bufdomain*, i32, i32) #1

declare dso_local %struct.buf* @buf_alloc(%struct.bufdomain*) #1

declare dso_local i64 @getnewbuf_kva(%struct.buf*, i32, i32) #1

declare dso_local i64 @buf_recycle(%struct.bufdomain*, i32) #1

declare dso_local i32 @bufspace_release(%struct.bufdomain*, i32) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bufspace_wait(%struct.bufdomain*, %struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

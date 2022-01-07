; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@VM_ALLOC_SBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_IGN_SBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"vm_page_grab: VM_ALLOC_SBUSY/VM_ALLOC_IGN_SBUSY mismatch\00", align 1
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_NOCREAT = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pgrbwt\00", align 1
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @vm_page_grab(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi i1 [ true, %3 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %28 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %26, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %22
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %140, %111, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.TYPE_13__* @vm_page_lookup(i32 %55, i32 %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %8, align 8
  %58 = icmp ne %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %121

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %62 = load i32, i32* @VM_ALLOC_SBUSY, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = call i32 @vm_page_trysbusy(%struct.TYPE_13__* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %9, align 4
  br label %78

72:                                               ; preds = %59
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = call i32 @vm_page_tryxbusy(%struct.TYPE_13__* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %66
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %176

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = load i32, i32* @PGA_REFERENCED, align 4
  %95 = call i32 @vm_page_aflag_set(%struct.TYPE_13__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @vm_page_busy_sleep(%struct.TYPE_13__* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @VM_OBJECT_WLOCK(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %176

111:                                              ; preds = %96
  br label %54

112:                                              ; preds = %78
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = call i32 @vm_page_wire(%struct.TYPE_13__* %118)
  br label %120

120:                                              ; preds = %117, %112
  br label %157

121:                                              ; preds = %54
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %176

127:                                              ; preds = %121
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call %struct.TYPE_13__* @vm_page_alloc(i32 %128, i32 %129, i32 %130)
  store %struct.TYPE_13__* %131, %struct.TYPE_13__** %8, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = icmp eq %struct.TYPE_13__* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %176

140:                                              ; preds = %134
  br label %54

141:                                              ; preds = %127
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @PG_ZERO, align 4
  %151 = and i32 %149, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = call i32 @pmap_zero_page(%struct.TYPE_13__* %154)
  br label %156

156:                                              ; preds = %153, %146, %141
  br label %157

157:                                              ; preds = %156, %120
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @VM_ALLOC_IGN_SBUSY, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %169 = call i32 @vm_page_sunbusy(%struct.TYPE_13__* %168)
  br label %173

170:                                              ; preds = %162
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %172 = call i32 @vm_page_xunbusy(%struct.TYPE_13__* %171)
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %157
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %4, align 8
  br label %176

176:                                              ; preds = %174, %139, %126, %110, %86
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %177
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @vm_page_lookup(i32, i32) #1

declare dso_local i32 @vm_page_trysbusy(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_tryxbusy(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vm_page_busy_sleep(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @vm_page_alloc(i32, i32, i32) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_sunbusy(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

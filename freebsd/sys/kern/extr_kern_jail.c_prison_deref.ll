; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_deref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_jail.c_prison_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.prison = type { i64, i32, i64, i32, i32*, %struct.prison*, %struct.prison*, i32*, i32, %struct.prison*, i32 }

@PD_LOCKED = common dso_local global i32 0, align 4
@PD_DEUREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"prison_deref PD_DEUREF on a dead prison (jid=%d)\00", align 1
@prison0 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"prison0 pr_uref=0\00", align 1
@PD_DEREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"prison_deref PD_DEREF on a dead prison (jid=%d)\00", align 1
@PD_LIST_SLOCKED = common dso_local global i32 0, align 4
@PD_LIST_XLOCKED = common dso_local global i32 0, align 4
@allprison_lock = common dso_local global i32 0, align 4
@PR_METHOD_REMOVE = common dso_local global i32 0, align 4
@allprison = common dso_local global i32 0, align 4
@pr_list = common dso_local global i32 0, align 4
@pr_sibling = common dso_local global i32 0, align 4
@M_PRISON = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prison*, i32)* @prison_deref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prison_deref(%struct.prison* %0, i32 %1) #0 {
  %3 = alloca %struct.prison*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.prison*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PD_LOCKED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.prison*, %struct.prison** %3, align 8
  %15 = getelementptr inbounds %struct.prison, %struct.prison* %14, i32 0, i32 3
  %16 = call i32 @mtx_lock(i32* %15)
  br label %17

17:                                               ; preds = %13, %2
  br label %18

18:                                               ; preds = %199, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PD_DEUREF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load %struct.prison*, %struct.prison** %3, align 8
  %25 = getelementptr inbounds %struct.prison, %struct.prison* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.prison*, %struct.prison** %3, align 8
  %30 = getelementptr inbounds %struct.prison, %struct.prison* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %28, i8* %33)
  %35 = load %struct.prison*, %struct.prison** %3, align 8
  %36 = getelementptr inbounds %struct.prison, %struct.prison* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.prison*, %struct.prison** %3, align 8
  %40 = getelementptr inbounds %struct.prison, %struct.prison* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %23
  %47 = load %struct.prison*, %struct.prison** %3, align 8
  %48 = getelementptr inbounds %struct.prison, %struct.prison* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %46, %23
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prison0, i32 0, i32 0), align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %57

56:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PD_DEREF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.prison*, %struct.prison** %3, align 8
  %64 = getelementptr inbounds %struct.prison, %struct.prison* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load %struct.prison*, %struct.prison** %3, align 8
  %69 = getelementptr inbounds %struct.prison, %struct.prison* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @KASSERT(i32 %67, i8* %72)
  %74 = load %struct.prison*, %struct.prison** %3, align 8
  %75 = getelementptr inbounds %struct.prison, %struct.prison* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %62, %57
  %79 = load %struct.prison*, %struct.prison** %3, align 8
  %80 = getelementptr inbounds %struct.prison, %struct.prison* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %7, align 4
  %82 = load %struct.prison*, %struct.prison** %3, align 8
  %83 = getelementptr inbounds %struct.prison, %struct.prison* %82, i32 0, i32 3
  %84 = call i32 @mtx_unlock(i32* %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %78
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @PD_LIST_SLOCKED, align 4
  %90 = load i32, i32* @PD_LIST_XLOCKED, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = call i32 @sx_xlock(i32* @allprison_lock)
  %96 = load i32, i32* @PD_LIST_XLOCKED, align 4
  %97 = load i32, i32* %4, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %94, %87
  %100 = load %struct.prison*, %struct.prison** %3, align 8
  %101 = load i32, i32* @PR_METHOD_REMOVE, align 4
  %102 = call i32 @osd_jail_call(%struct.prison* %100, i32 %101, i32* null)
  %103 = load %struct.prison*, %struct.prison** %3, align 8
  %104 = getelementptr inbounds %struct.prison, %struct.prison* %103, i32 0, i32 3
  %105 = call i32 @mtx_lock(i32* %104)
  %106 = load %struct.prison*, %struct.prison** %3, align 8
  %107 = getelementptr inbounds %struct.prison, %struct.prison* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 8
  store i32 %109, i32* %7, align 4
  %110 = load %struct.prison*, %struct.prison** %3, align 8
  %111 = getelementptr inbounds %struct.prison, %struct.prison* %110, i32 0, i32 3
  %112 = call i32 @mtx_unlock(i32* %111)
  br label %113

113:                                              ; preds = %99, %78
  %114 = load i32, i32* %7, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @PD_LIST_SLOCKED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = call i32 @sx_sunlock(i32* @allprison_lock)
  br label %131

123:                                              ; preds = %116
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @PD_LIST_XLOCKED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 @sx_xunlock(i32* @allprison_lock)
  br label %130

130:                                              ; preds = %128, %123
  br label %131

131:                                              ; preds = %130, %121
  ret void

132:                                              ; preds = %113
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @PD_LIST_SLOCKED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = call i32 @sx_try_upgrade(i32* @allprison_lock)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = call i32 @sx_sunlock(i32* @allprison_lock)
  %142 = call i32 @sx_xlock(i32* @allprison_lock)
  br label %143

143:                                              ; preds = %140, %137
  br label %152

144:                                              ; preds = %132
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @PD_LIST_XLOCKED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = call i32 @sx_xlock(i32* @allprison_lock)
  br label %151

151:                                              ; preds = %149, %144
  br label %152

152:                                              ; preds = %151, %143
  %153 = load %struct.prison*, %struct.prison** %3, align 8
  %154 = load i32, i32* @pr_list, align 4
  %155 = call i32 @TAILQ_REMOVE(i32* @allprison, %struct.prison* %153, i32 %154)
  %156 = load %struct.prison*, %struct.prison** %3, align 8
  %157 = load i32, i32* @pr_sibling, align 4
  %158 = call i32 @LIST_REMOVE(%struct.prison* %156, i32 %157)
  %159 = load %struct.prison*, %struct.prison** %3, align 8
  %160 = getelementptr inbounds %struct.prison, %struct.prison* %159, i32 0, i32 9
  %161 = load %struct.prison*, %struct.prison** %160, align 8
  store %struct.prison* %161, %struct.prison** %5, align 8
  %162 = load %struct.prison*, %struct.prison** %5, align 8
  store %struct.prison* %162, %struct.prison** %6, align 8
  br label %163

163:                                              ; preds = %171, %152
  %164 = load %struct.prison*, %struct.prison** %6, align 8
  %165 = icmp ne %struct.prison* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load %struct.prison*, %struct.prison** %6, align 8
  %168 = getelementptr inbounds %struct.prison, %struct.prison* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %166
  %172 = load %struct.prison*, %struct.prison** %6, align 8
  %173 = getelementptr inbounds %struct.prison, %struct.prison* %172, i32 0, i32 9
  %174 = load %struct.prison*, %struct.prison** %173, align 8
  store %struct.prison* %174, %struct.prison** %6, align 8
  br label %163

175:                                              ; preds = %163
  %176 = call i32 @sx_xunlock(i32* @allprison_lock)
  %177 = load %struct.prison*, %struct.prison** %3, align 8
  %178 = getelementptr inbounds %struct.prison, %struct.prison* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load %struct.prison*, %struct.prison** %3, align 8
  %183 = getelementptr inbounds %struct.prison, %struct.prison* %182, i32 0, i32 7
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @vrele(i32* %184)
  br label %186

186:                                              ; preds = %181, %175
  %187 = load %struct.prison*, %struct.prison** %3, align 8
  %188 = getelementptr inbounds %struct.prison, %struct.prison* %187, i32 0, i32 3
  %189 = call i32 @mtx_destroy(i32* %188)
  %190 = load %struct.prison*, %struct.prison** %3, align 8
  %191 = getelementptr inbounds %struct.prison, %struct.prison* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %186
  %195 = load %struct.prison*, %struct.prison** %3, align 8
  %196 = getelementptr inbounds %struct.prison, %struct.prison* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @cpuset_rel(i32* %197)
  br label %199

199:                                              ; preds = %194, %186
  %200 = load %struct.prison*, %struct.prison** %3, align 8
  %201 = call i32 @osd_jail_exit(%struct.prison* %200)
  %202 = load %struct.prison*, %struct.prison** %3, align 8
  %203 = load i32, i32* @M_PRISON, align 4
  %204 = call i32 @free(%struct.prison* %202, i32 %203)
  %205 = load %struct.prison*, %struct.prison** %5, align 8
  store %struct.prison* %205, %struct.prison** %3, align 8
  %206 = load %struct.prison*, %struct.prison** %3, align 8
  %207 = getelementptr inbounds %struct.prison, %struct.prison* %206, i32 0, i32 3
  %208 = call i32 @mtx_lock(i32* %207)
  %209 = load i32, i32* @PD_DEREF, align 4
  %210 = load i32, i32* @PD_DEUREF, align 4
  %211 = or i32 %209, %210
  store i32 %211, i32* %4, align 4
  br label %18
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @osd_jail_call(%struct.prison*, i32, i32*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sx_try_upgrade(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.prison*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.prison*, i32) #1

declare dso_local i32 @vrele(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cpuset_rel(i32*) #1

declare dso_local i32 @osd_jail_exit(%struct.prison*) #1

declare dso_local i32 @free(%struct.prison*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

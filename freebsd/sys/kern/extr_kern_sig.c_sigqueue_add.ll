; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigqueue_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigqueue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.proc* }
%struct.proc = type { i64 }
%struct.ksiginfo = type { i32, i32, %struct.TYPE_3__* }

@SQ_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sigqueue not inited\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@KSI_INS = common dso_local global i32 0, align 4
@KSI_HEAD = common dso_local global i32 0, align 4
@ksi_link = common dso_local global i32 0, align 4
@ksiginfo_zone = common dso_local global i32* null, align 8
@max_pending_per_proc = common dso_local global i64 0, align 8
@signal_overflow = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@signal_alloc_fail = common dso_local global i32 0, align 4
@KSI_PTRACE = common dso_local global i32 0, align 4
@KSI_TRAP = common dso_local global i32 0, align 4
@KSI_SIGQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, %struct.ksiginfo*)* @sigqueue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigqueue_add(%struct.TYPE_3__* %0, i32 %1, %struct.ksiginfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ksiginfo*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.ksiginfo*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ksiginfo* %2, %struct.ksiginfo** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 5
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SQ_INIT, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SIGKILL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SIGSTOP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %29 = icmp eq %struct.ksiginfo* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %23, %3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @SIGADDSET(i32 %33, i32 %34)
  br label %176

36:                                               ; preds = %27
  %37 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %38 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @KSI_INS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %45 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @KSI_HEAD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %54 = load i32, i32* @ksi_link, align 4
  %55 = call i32 @TAILQ_INSERT_HEAD(i32* %52, %struct.ksiginfo* %53, i32 %54)
  br label %62

56:                                               ; preds = %43
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %60 = load i32, i32* @ksi_link, align 4
  %61 = call i32 @TAILQ_INSERT_TAIL(i32* %58, %struct.ksiginfo* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %65 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %64, i32 0, i32 2
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %65, align 8
  br label %176

66:                                               ; preds = %36
  %67 = load i32*, i32** @ksiginfo_zone, align 8
  %68 = icmp eq i32* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i64 @__predict_false(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @SIGADDSET(i32 %75, i32 %76)
  br label %176

78:                                               ; preds = %66
  %79 = load %struct.proc*, %struct.proc** %8, align 8
  %80 = icmp ne %struct.proc* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.proc*, %struct.proc** %8, align 8
  %83 = getelementptr inbounds %struct.proc, %struct.proc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @max_pending_per_proc, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @signal_overflow, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @signal_overflow, align 4
  %90 = load i32, i32* @EAGAIN, align 4
  store i32 %90, i32* %10, align 4
  br label %136

91:                                               ; preds = %81, %78
  %92 = call %struct.ksiginfo* @ksiginfo_alloc(i32 0)
  store %struct.ksiginfo* %92, %struct.ksiginfo** %9, align 8
  %93 = icmp eq %struct.ksiginfo* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @signal_alloc_fail, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @signal_alloc_fail, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  store i32 %97, i32* %10, align 4
  br label %135

98:                                               ; preds = %91
  %99 = load %struct.proc*, %struct.proc** %8, align 8
  %100 = icmp ne %struct.proc* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.proc*, %struct.proc** %8, align 8
  %103 = getelementptr inbounds %struct.proc, %struct.proc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %101, %98
  %107 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %108 = load %struct.ksiginfo*, %struct.ksiginfo** %9, align 8
  %109 = call i32 @ksiginfo_copy(%struct.ksiginfo* %107, %struct.ksiginfo* %108)
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.ksiginfo*, %struct.ksiginfo** %9, align 8
  %112 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %114 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @KSI_HEAD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %106
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load %struct.ksiginfo*, %struct.ksiginfo** %9, align 8
  %123 = load i32, i32* @ksi_link, align 4
  %124 = call i32 @TAILQ_INSERT_HEAD(i32* %121, %struct.ksiginfo* %122, i32 %123)
  br label %131

125:                                              ; preds = %106
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load %struct.ksiginfo*, %struct.ksiginfo** %9, align 8
  %129 = load i32, i32* @ksi_link, align 4
  %130 = call i32 @TAILQ_INSERT_TAIL(i32* %127, %struct.ksiginfo* %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %119
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = load %struct.ksiginfo*, %struct.ksiginfo** %9, align 8
  %134 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %133, i32 0, i32 2
  store %struct.TYPE_3__* %132, %struct.TYPE_3__** %134, align 8
  br label %135

135:                                              ; preds = %131, %94
  br label %136

136:                                              ; preds = %135, %87
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %175

139:                                              ; preds = %136
  %140 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %141 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @KSI_PTRACE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @SIGADDSET(i32 %149, i32 %150)
  store i32 0, i32* %10, align 4
  br label %176

152:                                              ; preds = %139
  %153 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %154 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @KSI_TRAP, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load %struct.ksiginfo*, %struct.ksiginfo** %7, align 8
  %161 = getelementptr inbounds %struct.ksiginfo, %struct.ksiginfo* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @KSI_SIGQ, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %159, %152
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @SIGADDSET(i32 %169, i32 %170)
  store i32 0, i32* %10, align 4
  br label %176

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %4, align 4
  br label %183

175:                                              ; preds = %136
  br label %176

176:                                              ; preds = %175, %166, %146, %72, %62, %30
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @SIGADDSET(i32 %179, i32 %180)
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %176, %173
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ksiginfo*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ksiginfo*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.ksiginfo* @ksiginfo_alloc(i32) #1

declare dso_local i32 @ksiginfo_copy(%struct.ksiginfo*, %struct.ksiginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

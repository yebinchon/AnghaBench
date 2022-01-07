; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_record_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_record_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread = type { %struct.TYPE_4__*, %struct.ucred* }
%struct.TYPE_4__ = type { i32 }
%struct.ucred = type { %struct.prison*, %struct.TYPE_5__, i32*, i32, i32 }
%struct.prison = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"audit_record_ctor: wrong size\00", align 1
@AUDIT_RECORD_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @audit_record_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_record_ctor(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kaudit_record*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.prison*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp eq i64 56, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.thread*
  store %struct.thread* %19, %struct.thread** %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.kaudit_record*
  store %struct.kaudit_record* %21, %struct.kaudit_record** %9, align 8
  %22 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %23 = call i32 @bzero(%struct.kaudit_record* %22, i32 56)
  %24 = load i32, i32* @AUDIT_RECORD_MAGIC, align 4
  %25 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %26 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 11
  store i32 %24, i32* %27, align 8
  %28 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %29 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  %31 = call i32 @nanotime(i32* %30)
  %32 = load %struct.thread*, %struct.thread** %10, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 1
  %34 = load %struct.ucred*, %struct.ucred** %33, align 8
  store %struct.ucred* %34, %struct.ucred** %11, align 8
  %35 = load %struct.ucred*, %struct.ucred** %11, align 8
  %36 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %37 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 9
  %39 = call i32 @cru2x(%struct.ucred* %35, i32* %38)
  %40 = load %struct.ucred*, %struct.ucred** %11, align 8
  %41 = getelementptr inbounds %struct.ucred, %struct.ucred* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %44 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  store i32 %42, i32* %45, align 4
  %46 = load %struct.ucred*, %struct.ucred** %11, align 8
  %47 = getelementptr inbounds %struct.ucred, %struct.ucred* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %50 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  store i32 %48, i32* %51, align 8
  %52 = load %struct.ucred*, %struct.ucred** %11, align 8
  %53 = getelementptr inbounds %struct.ucred, %struct.ucred* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %58 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 6
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ucred*, %struct.ucred** %11, align 8
  %61 = getelementptr inbounds %struct.ucred, %struct.ucred* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %65 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  store i32 %63, i32* %66, align 8
  %67 = load %struct.ucred*, %struct.ucred** %11, align 8
  %68 = getelementptr inbounds %struct.ucred, %struct.ucred* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %72 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  %74 = load %struct.thread*, %struct.thread** %10, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %80 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ucred*, %struct.ucred** %11, align 8
  %83 = getelementptr inbounds %struct.ucred, %struct.ucred* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %87 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.ucred*, %struct.ucred** %11, align 8
  %90 = getelementptr inbounds %struct.ucred, %struct.ucred* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %94 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 8
  %96 = load %struct.ucred*, %struct.ucred** %11, align 8
  %97 = call i64 @jailed(%struct.ucred* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %4
  %100 = load %struct.ucred*, %struct.ucred** %11, align 8
  %101 = getelementptr inbounds %struct.ucred, %struct.ucred* %100, i32 0, i32 0
  %102 = load %struct.prison*, %struct.prison** %101, align 8
  store %struct.prison* %102, %struct.prison** %12, align 8
  %103 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %104 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.prison*, %struct.prison** %12, align 8
  %108 = getelementptr inbounds %struct.prison, %struct.prison* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strlcpy(i8* %106, i32 %109, i32 8)
  br label %117

111:                                              ; preds = %4
  %112 = load %struct.kaudit_record*, %struct.kaudit_record** %9, align 8
  %113 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  store i8 0, i8* %116, align 1
  br label %117

117:                                              ; preds = %111, %99
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.kaudit_record*, i32) #1

declare dso_local i32 @nanotime(i32*) #1

declare dso_local i32 @cru2x(%struct.ucred*, i32*) #1

declare dso_local i64 @jailed(%struct.ucred*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

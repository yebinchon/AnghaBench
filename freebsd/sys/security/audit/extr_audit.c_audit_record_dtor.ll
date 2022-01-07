; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_record_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit.c_audit_record_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"audit_record_dtor: wrong size\00", align 1
@M_AUDITPATH = common dso_local global i32 0, align 4
@M_AUDITTEXT = common dso_local global i32 0, align 4
@M_AUDITDATA = common dso_local global i32 0, align 4
@M_AUDITGIDSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @audit_record_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_record_dtor(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kaudit_record*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp eq i64 56, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.kaudit_record*
  store %struct.kaudit_record* %14, %struct.kaudit_record** %7, align 8
  %15 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %16 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %22 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_AUDITPATH, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %29 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %35 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_AUDITPATH, align 4
  %39 = call i32 @free(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %42 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %48 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @M_AUDITTEXT, align 4
  %52 = call i32 @free(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %55 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %60 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @M_AUDITDATA, align 4
  %63 = call i32 @free(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %66 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %72 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @M_AUDITTEXT, align 4
  %76 = call i32 @free(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %79 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %85 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @M_AUDITTEXT, align 4
  %89 = call i32 @free(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %92 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.kaudit_record*, %struct.kaudit_record** %7, align 8
  %99 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @M_AUDITGIDSET, align 4
  %104 = call i32 @free(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %90
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

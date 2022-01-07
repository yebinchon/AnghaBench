; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_auditinfo_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_auditinfo_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo_addr = type { %struct.TYPE_10__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.kaudit_record = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ARG_AUID = common dso_local global i32 0, align 4
@ARG_ASID = common dso_local global i32 0, align 4
@ARG_AMASK = common dso_local global i32 0, align 4
@ARG_TERMID_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_auditinfo_addr(%struct.auditinfo_addr* %0) #0 {
  %2 = alloca %struct.auditinfo_addr*, align 8
  %3 = alloca %struct.kaudit_record*, align 8
  store %struct.auditinfo_addr* %0, %struct.auditinfo_addr** %2, align 8
  %4 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %4, %struct.kaudit_record** %3, align 8
  %5 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %6 = icmp eq %struct.kaudit_record* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %110

8:                                                ; preds = %1
  %9 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %10 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %13 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %16 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %19 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 8
  %21 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %22 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %26 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %30 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %34 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %38 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %42 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 4
  %45 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %46 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %50 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %54 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %60 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %58, i32* %64, align 4
  %65 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %66 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %72 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %70, i32* %76, align 4
  %77 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %78 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %84 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %82, i32* %88, align 4
  %89 = load %struct.auditinfo_addr*, %struct.auditinfo_addr** %2, align 8
  %90 = getelementptr inbounds %struct.auditinfo_addr, %struct.auditinfo_addr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %96 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  store i32 %94, i32* %100, align 4
  %101 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %102 = load i32, i32* @ARG_AUID, align 4
  %103 = load i32, i32* @ARG_ASID, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @ARG_AMASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @ARG_TERMID_ADDR, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %101, i32 %108)
  br label %110

110:                                              ; preds = %8, %7
  ret void
}

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

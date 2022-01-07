; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_tcb_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_tcb_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wrq_cookie = type { i32 }
%struct.cpl_set_tcb_field = type { i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@CPL_SET_TCB_FIELD = common dso_local global i32 0, align 4
@CPL_COOKIE_HASHFILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32, i32, i32, i32)* @set_tcb_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tcb_field(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wrq_cookie, align 4
  %15 = alloca %struct.cpl_set_tcb_field*, align 8
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.adapter*, %struct.adapter** %8, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @howmany(i32 32, i32 16)
  %22 = call %struct.cpl_set_tcb_field* @start_wrq_wr(i32* %20, i32 %21, %struct.wrq_cookie* %14)
  store %struct.cpl_set_tcb_field* %22, %struct.cpl_set_tcb_field** %15, align 8
  %23 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %24 = icmp eq %struct.cpl_set_tcb_field* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %7, align 4
  br label %77

27:                                               ; preds = %6
  %28 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %29 = call i32 @bzero(%struct.cpl_set_tcb_field* %28, i32 32)
  %30 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %31 = load i32, i32* @CPL_SET_TCB_FIELD, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @INIT_TP_WR_MIT_CPL(%struct.cpl_set_tcb_field* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @V_QUEUENO(i32 %41)
  %43 = call i32 @V_NO_REPLY(i32 0)
  %44 = or i32 %42, %43
  %45 = call i8* @htobe16(i32 %44)
  %46 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %47 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  br label %53

48:                                               ; preds = %27
  %49 = call i32 @V_NO_REPLY(i32 1)
  %50 = call i8* @htobe16(i32 %49)
  %51 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %52 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %36
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @V_WORD(i32 %54)
  %56 = load i32, i32* @CPL_COOKIE_HASHFILTER, align 4
  %57 = call i32 @V_COOKIE(i32 %56)
  %58 = or i32 %55, %57
  %59 = call i8* @htobe16(i32 %58)
  %60 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %61 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i8* @htobe64(i32 %62)
  %64 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %65 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i8* @htobe64(i32 %66)
  %68 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %69 = getelementptr inbounds %struct.cpl_set_tcb_field, %struct.cpl_set_tcb_field* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.adapter*, %struct.adapter** %8, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load %struct.cpl_set_tcb_field*, %struct.cpl_set_tcb_field** %15, align 8
  %76 = call i32 @commit_wrq_wr(i32* %74, %struct.cpl_set_tcb_field* %75, %struct.wrq_cookie* %14)
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %53, %25
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.cpl_set_tcb_field* @start_wrq_wr(i32*, i32, %struct.wrq_cookie*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @bzero(%struct.cpl_set_tcb_field*, i32) #1

declare dso_local i32 @INIT_TP_WR_MIT_CPL(%struct.cpl_set_tcb_field*, i32, i32) #1

declare dso_local i8* @htobe16(i32) #1

declare dso_local i32 @V_QUEUENO(i32) #1

declare dso_local i32 @V_NO_REPLY(i32) #1

declare dso_local i32 @V_WORD(i32) #1

declare dso_local i32 @V_COOKIE(i32) #1

declare dso_local i8* @htobe64(i32) #1

declare dso_local i32 @commit_wrq_wr(i32*, %struct.cpl_set_tcb_field*, %struct.wrq_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

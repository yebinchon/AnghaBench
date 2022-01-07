; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_portal_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_portal_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.portal_group* }
%struct.portal_group = type { i32*, i32 }
%struct.pdu = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"portal-group \22%s\22 configured to redirect to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.pdu*)* @login_portal_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @login_portal_redirect(%struct.connection* %0, %struct.pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.pdu*, align 8
  %6 = alloca %struct.portal_group*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.pdu* %1, %struct.pdu** %5, align 8
  %7 = load %struct.connection*, %struct.connection** %4, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.portal_group*, %struct.portal_group** %10, align 8
  store %struct.portal_group* %11, %struct.portal_group** %6, align 8
  %12 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %13 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %19 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %22 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @log_debugx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %23)
  %25 = load %struct.pdu*, %struct.pdu** %5, align 8
  %26 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %27 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @login_redirect(%struct.pdu* %25, i32* %28)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @log_debugx(i8*, i32, i32*) #1

declare dso_local i32 @login_redirect(%struct.pdu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

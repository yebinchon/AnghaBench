; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_ldap_parse_search_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_ldap_parse_search_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ber_element* (%struct.ber_element*, i8*)* @ldap_parse_search_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ber_element* @ldap_parse_search_filter(%struct.ber_element* %0, i8* %1) #0 {
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ber_element*, align 8
  %7 = alloca i8*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %36

18:                                               ; preds = %11
  %19 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %20 = call %struct.ber_element* @ldap_do_parse_search_filter(%struct.ber_element* %19, i8** %7)
  store %struct.ber_element* %20, %struct.ber_element** %6, align 8
  %21 = icmp eq %struct.ber_element* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %36

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %30 = call i32 @ber_free_elements(%struct.ber_element* %29)
  %31 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %32 = call i32 @ber_link_elements(%struct.ber_element* %31, i32* null)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* @errno, align 4
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %36

34:                                               ; preds = %23
  %35 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  store %struct.ber_element* %35, %struct.ber_element** %3, align 8
  br label %36

36:                                               ; preds = %34, %28, %22, %16
  %37 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  ret %struct.ber_element* %37
}

declare dso_local %struct.ber_element* @ldap_do_parse_search_filter(%struct.ber_element*, i8**) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

declare dso_local i32 @ber_link_elements(%struct.ber_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

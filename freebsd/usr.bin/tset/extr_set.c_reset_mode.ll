; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_reset_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tset/extr_set.c_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8** }

@STDERR_FILENO = common dso_local global i32 0, align 4
@mode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VEOF = common dso_local global i64 0, align 8
@CEOF = common dso_local global i32 0, align 4
@VERASE = common dso_local global i64 0, align 8
@CERASE = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@CINTR = common dso_local global i32 0, align 4
@VKILL = common dso_local global i64 0, align 8
@CKILL = common dso_local global i32 0, align 4
@VQUIT = common dso_local global i64 0, align 8
@CQUIT = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@CSTART = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@CSTOP = common dso_local global i32 0, align 4
@VSUSP = common dso_local global i64 0, align 8
@CSUSP = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOK = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@BSDLY = common dso_local global i32 0, align 4
@CDISCARD = common dso_local global i32 0, align 4
@CFLUSH = common dso_local global i32 0, align 4
@CLNEXT = common dso_local global i32 0, align 4
@CRDLY = common dso_local global i32 0, align 4
@CRPRNT = common dso_local global i32 0, align 4
@CWERASE = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@FFDLY = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@IUCLC = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@NLDLY = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@OFDEL = common dso_local global i32 0, align 4
@OFILL = common dso_local global i32 0, align 4
@OLCUC = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@ONLRET = common dso_local global i32 0, align 4
@ONOCR = common dso_local global i32 0, align 4
@TABDLY = common dso_local global i32 0, align 4
@VDISCARD = common dso_local global i64 0, align 8
@VFLUSH = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@VTDLY = common dso_local global i32 0, align 4
@VWERASE = common dso_local global i64 0, align 8
@XCASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_mode() #0 {
  %1 = load i32, i32* @STDERR_FILENO, align 4
  %2 = call i32 @tcgetattr(i32 %1, %struct.TYPE_4__* @mode)
  %3 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %4 = load i64, i64* @VEOF, align 8
  %5 = getelementptr inbounds i8*, i8** %3, i64 %4
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @CEOF, align 4
  %8 = call i8* @CHK(i8* %6, i32 %7)
  %9 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %10 = load i64, i64* @VEOF, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  store i8* %8, i8** %11, align 8
  %12 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %13 = load i64, i64* @VERASE, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @CERASE, align 4
  %17 = call i8* @CHK(i8* %15, i32 %16)
  %18 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %19 = load i64, i64* @VERASE, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  store i8* %17, i8** %20, align 8
  %21 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %22 = load i64, i64* @VINTR, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @CINTR, align 4
  %26 = call i8* @CHK(i8* %24, i32 %25)
  %27 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %28 = load i64, i64* @VINTR, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* %26, i8** %29, align 8
  %30 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %31 = load i64, i64* @VKILL, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @CKILL, align 4
  %35 = call i8* @CHK(i8* %33, i32 %34)
  %36 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %37 = load i64, i64* @VKILL, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* %35, i8** %38, align 8
  %39 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %40 = load i64, i64* @VQUIT, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @CQUIT, align 4
  %44 = call i8* @CHK(i8* %42, i32 %43)
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %46 = load i64, i64* @VQUIT, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %44, i8** %47, align 8
  %48 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %49 = load i64, i64* @VSTART, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @CSTART, align 4
  %53 = call i8* @CHK(i8* %51, i32 %52)
  %54 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %55 = load i64, i64* @VSTART, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* %53, i8** %56, align 8
  %57 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %58 = load i64, i64* @VSTOP, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @CSTOP, align 4
  %62 = call i8* @CHK(i8* %60, i32 %61)
  %63 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %64 = load i64, i64* @VSTOP, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  store i8* %62, i8** %65, align 8
  %66 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %67 = load i64, i64* @VSUSP, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @CSUSP, align 4
  %71 = call i8* @CHK(i8* %69, i32 %70)
  %72 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 4), align 8
  %73 = load i64, i64* @VSUSP, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  store i8* %71, i8** %74, align 8
  %75 = load i32, i32* @IGNBRK, align 4
  %76 = load i32, i32* @PARMRK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @INPCK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ISTRIP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @INLCR, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IGNCR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IXOFF, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 0), align 8
  %90 = and i32 %89, %88
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 0), align 8
  %91 = load i32, i32* @BRKINT, align 4
  %92 = load i32, i32* @IGNPAR, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @ICRNL, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @IXON, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 0), align 8
  %99 = or i32 %98, %97
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 0), align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 1), align 4
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 1), align 4
  %101 = load i32, i32* @OPOST, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 1), align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 1), align 4
  %104 = load i32, i32* @CSIZE, align 4
  %105 = load i32, i32* @CSTOPB, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @PARENB, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @PARODD, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @CLOCAL, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 2), align 8
  %115 = and i32 %114, %113
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 2), align 8
  %116 = load i32, i32* @CS8, align 4
  %117 = load i32, i32* @CREAD, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 2), align 8
  %120 = or i32 %119, %118
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 2), align 8
  %121 = load i32, i32* @ECHONL, align 4
  %122 = load i32, i32* @NOFLSH, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @TOSTOP, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 3), align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 3), align 4
  %129 = load i32, i32* @ISIG, align 4
  %130 = load i32, i32* @ICANON, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @ECHO, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @ECHOE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @ECHOK, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 3), align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mode, i32 0, i32 3), align 4
  %140 = load i32, i32* @STDERR_FILENO, align 4
  %141 = load i32, i32* @TCSADRAIN, align 4
  %142 = call i32 @tcsetattr(i32 %140, i32 %141, %struct.TYPE_4__* @mode)
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.TYPE_4__*) #1

declare dso_local i8* @CHK(i8*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

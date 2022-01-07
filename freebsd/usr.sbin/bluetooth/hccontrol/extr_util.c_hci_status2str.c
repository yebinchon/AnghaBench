
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;

char const *
hci_status2str(int status)
{
 static char const * const t[] = {
             "No error",
             "Unknown HCI command",
             "No connection",
             "Hardware failure",
             "Page timeout",
             "Authentication failure",
             "Key missing",
             "Memory full",
             "Connection timeout",
             "Max number of connections",
             "Max number of SCO connections to a unit",
             "ACL connection already exists",
             "Command disallowed",
             "Host rejected due to limited resources",
             "Host rejected due to security reasons",
             "Host rejected due to remote unit is a personal unit",
             "Host timeout",
             "Unsupported feature or parameter value",
             "Invalid HCI command parameter",
             "Other end terminated connection: User ended connection",
             "Other end terminated connection: Low resources",
             "Other end terminated connection: About to power off",
             "Connection terminated by local host",
             "Repeated attempts",
             "Pairing not allowed",
             "Unknown LMP PDU",
             "Unsupported remote feature",
             "SCO offset rejected",
             "SCO interval rejected",
             "SCO air mode rejected",
             "Invalid LMP parameters",
             "Unspecified error",
             "Unsupported LMP parameter value",
             "Role change not allowed",
             "LMP response timeout",
             "LMP error transaction collision",
             "LMP PSU not allowed",
             "Encryption mode not acceptable",
             "Unit key used",
             "QoS is not supported",
             "Instant passed",
             "Pairing with unit key not supported"
 };

 return (status >= SIZE(t)? "Unknown error" : t[status]);
}
